using System.Data.SqlClient;
using System.Data;

namespace HRMDAL.Repositries
{
    public class JobPostingRepositry : BaseRepositry
    {
        public void JobPost(Entites.JobPosting job)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SPJobPostins";
                        cmd.Connection = con;
                        cmd.Parameters.Add(new SqlParameter("@jobdomin", job.JobDomain));
                        cmd.Parameters.Add(new SqlParameter("@jobtitle", job.JobTitle));
                        cmd.Parameters.Add(new SqlParameter("@email", job.Email));
                        cmd.Parameters.Add(new SqlParameter("@skill", job.Skills));
                        cmd.Parameters.Add(new SqlParameter("@expiernce", job.Expierence));
                        cmd.Parameters.Add(new SqlParameter("@qualif", job.Qualification));
                        cmd.Parameters.Add(new SqlParameter("@compaynae", job.Company));
                        cmd.Parameters.Add(new SqlParameter("@nofemp", job.NofEmp));
                        cmd.Parameters.Add(new SqlParameter("@empid", job.EmpID));
                        cmd.ExecuteNonQuery();
                    }

                }

            }
            catch
            {
                throw;
            }
        }

        public DataSet ListOfJobs()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(HRMConString))
                {
                    con.Open();

                    using (SqlDataAdapter cmd = new SqlDataAdapter("select JobID,JobDomain,JobTitle,Skills,Expierence from JobPosting", con))
                    {                       
                        cmd.SelectCommand.Connection = con;

                        DataSet ds = new DataSet("JobPosting");
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
    }
}
