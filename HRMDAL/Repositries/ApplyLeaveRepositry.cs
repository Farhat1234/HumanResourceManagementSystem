using System.Data.SqlClient;
using System.Data;
using System;

namespace HRMDAL.Repositries
{
    public class ApplyLeaveRepositry : BaseRepositry
    {
        public void ApplyLeav(Entites.ApplyLeave App)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPApplyLeave";
                        cmd.Connection = con;
                        cmd.Parameters.Add(new SqlParameter("EmpID", App.EmpID));
                        cmd.Parameters.Add(new SqlParameter("FromDate", App.FromDate));
                        cmd.Parameters.Add(new SqlParameter("ToDate", App.Todate));
                        cmd.Parameters.Add(new SqlParameter("NoofDays", App.NofDays));
                        cmd.Parameters.Add(new SqlParameter("Reason", App.Reason));
                        cmd.Parameters.Add(new SqlParameter("LeaveTypeID", App.LeaveTypeID));
                        cmd.Parameters.Add(new SqlParameter("@IsActive", 1));
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public DataSet GetLeaveQuota(int empId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlDataAdapter cmd = new SqlDataAdapter())
                    {
                        cmd.SelectCommand = new SqlCommand();
                        cmd.SelectCommand.CommandType = CommandType.StoredProcedure;
                        cmd.SelectCommand.CommandText = "SPGetLeaveQuota";
                        cmd.SelectCommand.Parameters.AddWithValue("@empid",empId);
                        cmd.SelectCommand.Connection = con;

                        DataSet ds = new DataSet();
                        cmd.Fill(ds);
                        return ds;
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public DataSet GetLeaveHistory(int empId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {
                        da.SelectCommand = new SqlCommand();
                        da.SelectCommand.CommandType = CommandType.StoredProcedure;
                        da.SelectCommand.Parameters.AddWithValue("@empId", empId);
                        da.SelectCommand.CommandText = "GetLeaveHistory";
                        da.SelectCommand.Connection = con;

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
            catch
            {                
                throw;
            }
        }

        public DataSet GetAllPendingLeaves()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlDataAdapter da = new SqlDataAdapter("select FromDate,ToDate,NoofDays,Reason,EmpID,LeaveTypeID from ApplyLeave where IsActive = 1", con))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public void ApproveLeaves(int empID, DateTime fromDate)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("update ApplyLeave set IsActive = 0 where FromDate='" + fromDate.ToString("yyyy-dd-MM") + "' and EmpID='" + empID + "'", con);
                    cmd.ExecuteReader();
                }
            }
            catch
            {
                throw;
            }
        }
    }
}
