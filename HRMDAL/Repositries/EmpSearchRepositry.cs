using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace HRMDAL.Repositries
{
    public class EmpSearchRepositry : BaseRepositry
    {
        public List<Entites.EmployeeSearch> EmpSearch(int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPSearchEmployee";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@empid", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;

                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.EmployeeSearch> emplysrch = new List<Entites.EmployeeSearch>();

                        while (dr.Read())
                        {
                            Entites.EmployeeSearch ES = new Entites.EmployeeSearch();
                            ES.EmpID = dr.GetInt32(0);
                            ES.EFname = dr.GetString(1);
                            ES.Cname = dr.GetString(2);
                            ES.DOJ = dr.GetDateTime(3);
                            ES.City = dr.GetString(4);
                            ES.State = dr.GetString(5);
                            ES.Email = dr.GetString(6);
                            emplysrch.Add(ES);
                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return emplysrch;
                    }

                }

            }
            catch
            {
                throw;
            }
        }

        public List<Entites.EmployeeSearch> EmpSearchName(string name)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPSearchEmpName";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@name", SqlDbType.NVarChar);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = name;

                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.EmployeeSearch> emplysrch = new List<Entites.EmployeeSearch>();

                        while (dr.Read())
                        {
                            Entites.EmployeeSearch ES = new Entites.EmployeeSearch();
                            ES.EmpID = dr.GetInt32(0);
                            ES.EFname = dr.GetString(1);
                            ES.Cname = dr.GetString(2);
                            ES.DOJ = dr.GetDateTime(3);
                            ES.City = dr.GetString(4);
                            ES.State = dr.GetString(5);
                            ES.Email = dr.GetString(6);
                            emplysrch.Add(ES);
                        }

                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return emplysrch;
                    }
                }

            }
            catch
            {
                throw;
            }
        }

        public List<Entites.EmlpoyeeSeachEditEmp> RetriveDesignation()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "RetriveDesgination";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();


                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.EmlpoyeeSeachEditEmp> emplysrchemp = new List<Entites.EmlpoyeeSeachEditEmp>();

                        while (dr.Read())
                        {
                            Entites.EmlpoyeeSeachEditEmp ES = new Entites.EmlpoyeeSeachEditEmp();
                            ES.EmpID = dr.GetInt32(0);
                            ES.Designation = dr.GetString(1);
                            emplysrchemp.Add(ES);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return emplysrchemp;
                    }
                }

            }

            catch
            {
                throw;
            }
        }

        public List<Entites.EmlpoyeeSeachEditEmp> RetriveDepartment()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "RetriveDepartment";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();


                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.EmlpoyeeSeachEditEmp> emplysrchemp = new List<Entites.EmlpoyeeSeachEditEmp>();

                        while (dr.Read())
                        {
                            Entites.EmlpoyeeSeachEditEmp ES = new Entites.EmlpoyeeSeachEditEmp();
                            ES.EmpID = dr.GetInt32(0);
                            ES.Dep = dr.GetString(1);
                            emplysrchemp.Add(ES);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return emplysrchemp;
                    }
                }
            }

            catch
            {
                throw;
            }
        }

        public List<Entites.Salary> RetriveEmpID()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPRetriveEmpID";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();


                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.Salary> empidsalary = new List<Entites.Salary>();

                        while (dr.Read())
                        {
                            Entites.Salary ES = new Entites.Salary();
                            ES.EmpID = dr.GetInt32(0);
                            empidsalary.Add(ES);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return empidsalary;
                    }
                }
            }

            catch
            {
                throw;
            }
        }

        public List<Entites.Employee> SalryGrid(int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPEmpID";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@EmpID", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;

                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.Employee> Salgrd = new List<Entites.Employee>();

                        while (dr.Read())
                        {
                            Entites.Employee ES = new Entites.Employee();
                            ES.EmpFirstName = dr.GetString(0);
                            ES.EmpLastName = dr.GetString(1);
                            ES.DOJ = dr.GetDateTime(2);
                            // ES.Cname = dr.GetString(2);
                            ES.Gender = dr.GetString(3);
                            ES.Address = dr.GetString(4);
                            ES.City = dr.GetString(5);
                            ES.State = dr.GetString(6);
                            ES.Email = dr.GetString(7);
                            Salgrd.Add(ES);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();
                        //dis is jst below dataredr obj
                        return Salgrd;
                    }

                }

            }

            catch
            {
                throw;
            }
        }

        public List<Entites.EmployeeSearch> EmpSearchDepDes(string department, string desgnation)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SearchDesDep";
                        cmd.Connection = con;
                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@dep", SqlDbType.NChar, 50);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = department;


                        prm = cmd.Parameters.Add("@designation", SqlDbType.NChar, 50);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = desgnation;


                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.EmployeeSearch> emplysrch = new List<Entites.EmployeeSearch>();

                        while (dr.Read())
                        {
                            Entites.EmployeeSearch ES = new Entites.EmployeeSearch();
                            ES.EmpID = dr.GetInt32(0);
                            ES.EFname = dr.GetString(1);
                            ES.Cname = dr.GetString(2);
                            ES.DOJ = dr.GetDateTime(3);
                            ES.City = dr.GetString(4);
                            ES.State = dr.GetString(5);
                            ES.Email = dr.GetString(6);
                            emplysrch.Add(ES);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return emplysrch;
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

