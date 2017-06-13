using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace HRMDAL
{
    public class DALDropDownList
    {
        public static DataTable CountryList()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select CountryID, CountryName from CountryMaster;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("CountryMaster");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable StateList(int CountryID)
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select StateID, StateName from StateMaster Where CountryID=@CountryID", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@CountryID", SqlDbType.Int).Value = CountryID;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("City");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }  

        public static DataTable CityList(int StateID)
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select CityID, CityName from CityMaster Where StateID=@StateID", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@StateID", SqlDbType.Int).Value = StateID;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("CityMaster");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable GraduationList()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select DegreeID, DegreeType from Graduation;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Graduation");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable PostGraduationList()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select PGID, PGType from PG;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("PG");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable DoctorateList()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select DoctorateID, DoctorateType from Doctorate;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Doctorate");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable Relation()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from Relation;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Relation");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable LeaveType()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from LeaveType;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("LeaveType");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable Department()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from Department;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Department");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable DesignationList()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select DesignationID, DesignationType from Designation;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Designation");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable Nationality()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from Nationality;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Nationality");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable LoanAdvance()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from Loan;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("Loan");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }

        public static DataTable JobDomain()
        {
            string connection = ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString;
            //  bool status = false;  
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("select * from JobDomain;", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;
            if (dr.HasRows)
            {
                dt = new DataTable("JobDomain");
                dt.Load(dr);
                //   status = true;  
                return dt;
            }
            if (cmd != null)
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }
    }
}
