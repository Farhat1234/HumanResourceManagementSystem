using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using HRMDAL.Entites;

namespace HRMDAL.Repositries
{
    public class AddEmployeeRepositry : BaseRepositry
    {
        public void AddEmployee(Entites.Employee emp)
        {
            try
            {
                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = HRMConString;
                    con.Open();
                    string str = "SPAddEmployee";

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = str;
                        cmd.Connection = con;

                        SqlParameter sprm = new SqlParameter();

                        sprm = cmd.Parameters.Add("@empid", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.EmpID;

                        sprm = cmd.Parameters.Add("@efname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.EmpFirstName;

                        sprm = cmd.Parameters.Add("@elname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.EmpLastName;

                        sprm = cmd.Parameters.Add("@cname", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.CompanyName;

                        sprm = cmd.Parameters.Add("@doj", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.DOJ;

                        sprm = cmd.Parameters.Add("@dob", SqlDbType.DateTime);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.DOB;

                        sprm = cmd.Parameters.Add("@gen", SqlDbType.NChar, 10);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Gender;

                        sprm = cmd.Parameters.Add("@addr", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Address;

                        sprm = cmd.Parameters.Add("@city", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.City;

                        sprm = cmd.Parameters.Add("@state", SqlDbType.NChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.State;

                        sprm = cmd.Parameters.Add("@phne", SqlDbType.Decimal);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Phone;

                        sprm = cmd.Parameters.Add("@email", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Email;

                        sprm = cmd.Parameters.Add("@phot", SqlDbType.Image);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Photo;

                        sprm = cmd.Parameters.Add("@role", SqlDbType.Int);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.RoleID;

                        sprm = cmd.Parameters.Add("@pass", SqlDbType.NVarChar, 50);
                        sprm.Direction = ParameterDirection.Input;
                        sprm.Value = emp.Pass;
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch
            {
                throw;
            }
        }

        public List<Entites.Employee> RetriveEmpIDImage(int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "RetriveImage";
                        cmd.Connection = con;

                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@Empid", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;

                        //forward onnly,read only online cursors
                        SqlDataReader dr = cmd.ExecuteReader();
                        List<Entites.Employee> empidimage = new List<Entites.Employee>();

                        while (dr.Read())
                        {
                            Entites.Employee Emp = new Entites.Employee();
                            Emp.EmpID = dr.GetInt32(0);
                            Emp.Photo = ((byte[])dr["Photo"]);
                            empidimage.Add(Emp);

                        }
                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return empidimage;
                    }

                }

            }

            catch
            {
                throw;
            }
        }

        public List<Entites.StateCity> GetStates()
        {
            try
            {
                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = HRMConString;
                    con.Open();
                    string str = "RetriveState";

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = str;
                        cmd.Connection = con;

                        SqlDataReader dr = cmd.ExecuteReader();//since we r reading rows thro select stmt
                        List<Entites.StateCity> state = new List<Entites.StateCity>();
                        while (dr.Read())
                        {
                            Entites.StateCity st = new Entites.StateCity();//fetch rows
                            st.StateID = dr.GetInt32(0);
                            st.StateName = dr.GetString(1);
                            state.Add(st);
                        }

                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return state;
                    }

                }

            }
            catch
            {
                throw;
            }
        }

        public List<Entites.City> GetCity(int StateID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = HRMConString;
                    con.Open();
                    string str = "RetriveCity";

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = str;
                        cmd.Connection = con;

                        SqlParameter prm = cmd.Parameters.Add("@stateid", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = StateID;

                        SqlDataReader dr = cmd.ExecuteReader();

                        List<Entites.City> city = new List<Entites.City>();
                        while (dr.Read())
                        {
                            Entites.City ct = new Entites.City();
                            ct.CityName = dr.GetString(0);
                            ct.StateID = dr.GetInt32(1);
                            city.Add(ct);
                        }

                        dr.Close();
                        con.Close();
                        con.Dispose();

                        return city;
                    }

                }
            }
            catch
            {
                throw;
            }
        }

        public void AddBankDetails(BankDetails bankDetails)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlDataAdapter da= new SqlDataAdapter())
                    {
                        string result = "select * from EmployeeBankDetails where EmpID='"+bankDetails.EmpId+"'";

                        if (result == null)
                        {
                            da.SelectCommand = new SqlCommand();
                            da.SelectCommand.CommandType = CommandType.StoredProcedure;
                            da.SelectCommand.CommandText = "SPBankDetails";
                            da.SelectCommand.Connection = con;
                            da.SelectCommand.Parameters.AddWithValue("@empid", bankDetails.EmpId);
                            da.SelectCommand.Parameters.AddWithValue("@accountType", bankDetails.AccountType);
                            da.SelectCommand.Parameters.AddWithValue("@bankname", bankDetails.BankName);
                            da.SelectCommand.Parameters.AddWithValue("@accno", bankDetails.AccountNo);
                            da.SelectCommand.Parameters.AddWithValue("@country", bankDetails.Country);
                            da.SelectCommand.Parameters.AddWithValue("@ifsc", bankDetails.IFSC);
                            da.SelectCommand.Parameters.AddWithValue("@raccountType", bankDetails.RAccountType);
                            da.SelectCommand.Parameters.AddWithValue("@rbankname", bankDetails.RBankName);
                            da.SelectCommand.Parameters.AddWithValue("@raccno", bankDetails.RAccountNo);
                            da.SelectCommand.Parameters.AddWithValue("@rcountry", bankDetails.RCountry);
                            da.SelectCommand.Parameters.AddWithValue("@rifsc", bankDetails.RIFSC);
                            da.SelectCommand.ExecuteNonQuery();

                        }
                        else
                        {
                            da.UpdateCommand = new SqlCommand();
                            da.UpdateCommand.CommandType = CommandType.StoredProcedure;
                            da.UpdateCommand.CommandText = "SPUpdateBankDetails";
                            da.UpdateCommand.Connection = con;
                            da.SelectCommand.Parameters.AddWithValue("@empid", bankDetails.EmpId);
                            da.UpdateCommand.Parameters.AddWithValue("@bankname", bankDetails.BankName);
                            da.UpdateCommand.Parameters.AddWithValue("@accno", bankDetails.AccountNo);
                            da.UpdateCommand.Parameters.AddWithValue("@country", bankDetails.Country);
                            da.UpdateCommand.Parameters.AddWithValue("@ifsc", bankDetails.IFSC);
                            da.UpdateCommand.Parameters.AddWithValue("@rbankname", bankDetails.RBankName);
                            da.UpdateCommand.Parameters.AddWithValue("@raccno", bankDetails.RAccountNo);
                            da.UpdateCommand.Parameters.AddWithValue("@rcountry", bankDetails.RCountry);
                            da.UpdateCommand.Parameters.AddWithValue("@rifsc", bankDetails.RIFSC);
                            da.UpdateCommand.ExecuteNonQuery();
                        }
                                               
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
