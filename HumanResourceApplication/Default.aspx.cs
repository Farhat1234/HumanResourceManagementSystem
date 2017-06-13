using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HumanResourceApplication
{
    public partial class EmployeeDataBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=HumanResource;Integrated Security=True");
             SqlDataAdapter da = new  SqlDataAdapter("select * from HolidayList",con);
             DataSet ds = new DataSet();
             da.Fill(ds);
             gvHolidayList.DataSource = ds;
             gvHolidayList.DataBind();

        }
    }
}