using System.Data;
using System.Data.SqlClient;

namespace HRMDAL.Repositries
{
    public class DailyAttendRepsitry : BaseRepositry
    {
        public void DailyAttendance(Entites.DailyAttendance Atten)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPDailyAttendance";
                        cmd.Connection = con;
                        cmd.Parameters.Add(new SqlParameter("EmpID", Atten.EmpID));
                        cmd.Parameters.Add(new SqlParameter("EmpName", Atten.EmpName));
                        cmd.Parameters.Add(new SqlParameter("Department", Atten.Department));
                        cmd.Parameters.Add(new SqlParameter("Month", Atten.Month));
                        cmd.Parameters.Add(new SqlParameter("Year", Atten.Year));
                        cmd.Parameters.Add(new SqlParameter("Date", Atten.Date));
                        cmd.Parameters.Add(new SqlParameter("INtime", Atten.InTime));
                        cmd.Parameters.Add(new SqlParameter("OUTtime", Atten.OutTime));
                        cmd.Parameters.Add(new SqlParameter("Punching", Atten.Punching));
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch
            {
                throw;
            }
        }
    }
}
