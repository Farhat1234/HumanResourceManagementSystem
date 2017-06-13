using System.Data.SqlClient;
using System.Data;

namespace HRMDAL.Repositries
{
    public class EmployeeEditRepository : BaseRepositry
    {
        public int CheckPanCardIDExist(string PanCardID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "CheckPanCardExits";
                        cmd.Connection = con;

                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@pancard", SqlDbType.NVarChar, 50);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = PanCardID;


                        prm = cmd.Parameters.Add("@ret", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();

                        int flag = (int)cmd.Parameters["@ret"].Value;
                        return flag;
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public void AddEditEmployee(Entites.EmployeeEdit emplyEdit)
        {
            try
            {
                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = HRMConString;
                    con.Open();
                    string str = "UpdateEmployeeDetails";

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = str;
                        cmd.Connection = con;

                        SqlParameter sprm = new SqlParameter();

                        sprm = cmd.Parameters.Add("@empid", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.EmpID;

                        sprm = cmd.Parameters.Add("@bankac", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.BankAC;

                        sprm = cmd.Parameters.Add("@pfno", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PFno;

                        sprm = cmd.Parameters.Add("@pancard", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PanNo;

                        sprm = cmd.Parameters.Add("@dept", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Dept;

                        sprm = cmd.Parameters.Add("@designation", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Designation;

                        sprm = cmd.Parameters.Add("@categry", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Category;

                        sprm = cmd.Parameters.Add("@fapprover", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.FirstApp;

                        sprm = cmd.Parameters.Add("@sapprover", SqlDbType.NChar, 30);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.SecndApp;

                        sprm = cmd.Parameters.Add("@rptmgr", SqlDbType.NChar, 30);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.RprtigMgr;

                        sprm = cmd.Parameters.Add("@weekof", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.WeekOF;

                        sprm = cmd.Parameters.Add("@curntshift", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CurntShif;

                        sprm = cmd.Parameters.Add("@fname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.FatherName;

                        sprm = cmd.Parameters.Add("@mname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MotherName;

                        sprm = cmd.Parameters.Add("@adharno", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.AadharNo;

                        sprm = cmd.Parameters.Add("@drivinglc", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.DrivingLCNo;

                        sprm = cmd.Parameters.Add("@emergenno", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.EmergncyPhne;

                        sprm = cmd.Parameters.Add("@alternatemail", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.AlternateEmail;

                        sprm = cmd.Parameters.Add("@mtounge", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MotherTongue;

                        sprm = cmd.Parameters.Add("@maritalstatus", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MaritalStus;

                        sprm = cmd.Parameters.Add("@blodgrp", SqlDbType.NVarChar, 5);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.BlodGrp;

                        sprm = cmd.Parameters.Add("@nationality", SqlDbType.NChar, 15);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Nationality;

                        sprm = cmd.Parameters.Add("@religion", SqlDbType.NChar, 15);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Religion;

                        sprm = cmd.Parameters.Add("@identmark", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.IdentificationMark;

                        sprm = cmd.Parameters.Add("@pcadd", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCaddr;

                        sprm = cmd.Parameters.Add("@pccity", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCcity;

                        sprm = cmd.Parameters.Add("@pcstate", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCstate;

                        sprm = cmd.Parameters.Add("@pcpin", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCpincode;

                        sprm = cmd.Parameters.Add("@ccaddr", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCpincode;

                        sprm = cmd.Parameters.Add("@cccity", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCcity;

                        sprm = cmd.Parameters.Add("@ccstate", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCstate;

                        sprm = cmd.Parameters.Add("@ccpin", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCpincode;

                        sprm = cmd.Parameters.Add("@passortno", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PassportNo;

                        sprm = cmd.Parameters.Add("@pname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Name;

                        sprm = cmd.Parameters.Add("@issuedate", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.IssueDate;

                        sprm = cmd.Parameters.Add("@expirydate", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.ExpiryDate;

                        cmd.ExecuteNonQuery();
                    }
                }

            }
            catch
            {
                throw;
            }
        }

        public Entites.EmployeeEdit ViewDetail(int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "DetailEditEmployUpdate";
                        cmd.Connection = con;

                        SqlParameter prm = new SqlParameter();
                        prm = cmd.Parameters.Add("@Empid", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;
                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();

                        Entites.EmployeeEdit vw = new Entites.EmployeeEdit();
                        while (dr.Read())
                        {
                            vw.EmpID = dr.GetInt32(1);
                            vw.BankAC = dr.GetDecimal(2);
                            vw.PFno = dr.GetInt32(3);
                            vw.PanNo = dr.GetString(4);
                            vw.Dept = dr.GetString(5);
                            vw.Designation = dr.GetString(6);
                            vw.Category = dr.GetString(7);
                            vw.FirstApp = dr.GetString(8);
                            vw.SecndApp = dr.GetString(9);
                            vw.RprtigMgr = dr.GetString(10);
                            vw.WeekOF = dr.GetString(11);
                            vw.CurntShif = dr.GetString(12);
                            vw.FatherName = dr.GetString(13);
                            vw.MotherName = dr.GetString(14);
                            vw.AadharNo = dr.GetDecimal(15);
                            vw.DrivingLCNo = dr.GetDecimal(16);
                            vw.EmergncyPhne = dr.GetDecimal(17);
                            vw.AlternateEmail = dr.GetString(18);
                            vw.MotherTongue = dr.GetString(19);
                            vw.MaritalStus = dr.GetString(20);
                            vw.BlodGrp = dr.GetString(21);
                            vw.Nationality = dr.GetString(22);
                            vw.Religion = dr.GetString(23);
                            vw.IdentificationMark = dr.GetString(24);
                            vw.PCaddr = dr.GetString(25);
                            vw.PCcity = dr.GetString(26);
                            vw.PCstate = dr.GetString(27);
                            vw.PCpincode = dr.GetDecimal(28);
                            vw.CCaddr = dr.GetString(29);
                            vw.CCcity = dr.GetString(30);
                            vw.CCstate = dr.GetString(31);
                            vw.CCpincode = dr.GetDecimal(32);
                            vw.PassportNo = dr.GetString(33);
                            vw.Name = dr.GetString(34);
                            vw.IssueDate = dr.GetDateTime(35);
                            vw.ExpiryDate = dr.GetDateTime(36);
                        }

                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return vw;
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public void EmployUpdate(Entites.EmployeeEdit emplyEdit)
        {
            try
            {
                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = HRMConString;
                    con.Open();
                    string str = "EmployUpdate";

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = str;
                        cmd.Connection = con;

                        SqlParameter sprm = new SqlParameter();

                        sprm = cmd.Parameters.Add("@empid", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.EmpID;

                        sprm = cmd.Parameters.Add("@bankac", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.BankAC;

                        sprm = cmd.Parameters.Add("@pfno", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PFno;

                        sprm = cmd.Parameters.Add("@pancard", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PanNo;

                        sprm = cmd.Parameters.Add("@dept", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Dept;

                        sprm = cmd.Parameters.Add("@designation", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Designation;

                        sprm = cmd.Parameters.Add("@categry", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Category;

                        sprm = cmd.Parameters.Add("@fapprover", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.FirstApp;

                        sprm = cmd.Parameters.Add("@sapprover", SqlDbType.NChar, 30);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.SecndApp;

                        sprm = cmd.Parameters.Add("@rptmgr", SqlDbType.NChar, 30);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.RprtigMgr;

                        sprm = cmd.Parameters.Add("@weekof", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.WeekOF;

                        sprm = cmd.Parameters.Add("@curntshift", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CurntShif;

                        sprm = cmd.Parameters.Add("@fname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.FatherName;

                        sprm = cmd.Parameters.Add("@mname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MotherName;

                        sprm = cmd.Parameters.Add("@adharno", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.AadharNo;

                        sprm = cmd.Parameters.Add("@drivinglc", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.DrivingLCNo;

                        sprm = cmd.Parameters.Add("@emergenno", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.EmergncyPhne;

                        sprm = cmd.Parameters.Add("@alternatemail", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.AlternateEmail;

                        sprm = cmd.Parameters.Add("@mtounge", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MotherTongue;

                        sprm = cmd.Parameters.Add("@maritalstatus", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.MaritalStus;

                        sprm = cmd.Parameters.Add("@blodgrp", SqlDbType.NVarChar, 5);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.BlodGrp;


                        sprm = cmd.Parameters.Add("@nationality", SqlDbType.NChar, 15);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Nationality;


                        sprm = cmd.Parameters.Add("@religion", SqlDbType.NChar, 15);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Religion;


                        sprm = cmd.Parameters.Add("@identmark", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.IdentificationMark;


                        sprm = cmd.Parameters.Add("@pcadd", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCaddr;

                        sprm = cmd.Parameters.Add("@pccity", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCcity;

                        sprm = cmd.Parameters.Add("@pcstate", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCstate;

                        sprm = cmd.Parameters.Add("@pcpin", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCpincode; ;


                        sprm = cmd.Parameters.Add("@ccaddr", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PCpincode; ;


                        sprm = cmd.Parameters.Add("@cccity", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCcity;


                        sprm = cmd.Parameters.Add("@ccstate", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCstate;


                        sprm = cmd.Parameters.Add("@ccpin", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.CCpincode;


                        sprm = cmd.Parameters.Add("@passortno", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.PassportNo;


                        sprm = cmd.Parameters.Add("@pname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.Name;

                        sprm = cmd.Parameters.Add("@issuedate", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.IssueDate;

                        sprm = cmd.Parameters.Add("@expirydate", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emplyEdit.ExpiryDate;
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public int CheckEmpIDEdit(int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "CheckEmpIDEdit";
                        cmd.Connection = con;

                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@EmpID", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;


                        prm = cmd.Parameters.Add("@ret", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();

                        int flag = (int)cmd.Parameters["@ret"].Value;
                        return flag;
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
