using System.Data.SqlClient;
using System.Data;

namespace HRMDAL.Repositries
{
    public class LoginRepositry : BaseRepositry
    {
        public Entites.Login LoginRep(string Email, string Password, int EmpID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPLogin";
                        cmd.Connection = con;

                        SqlParameter prm = new SqlParameter();

                        prm = cmd.Parameters.Add("@paswd", SqlDbType.NVarChar, 50);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = Password;

                        prm = cmd.Parameters.Add("@EmpID", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Input;
                        prm.Value = EmpID;


                        prm = cmd.Parameters.Add("@roleid", SqlDbType.Int);
                        prm.Direction = ParameterDirection.Output;

                        cmd.ExecuteNonQuery();

                        Entites.Login login = new Entites.Login();
                        login.RoleID = (int)cmd.Parameters["@roleid"].Value;


                        con.Close();
                        con.Dispose();
                        return login;
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
