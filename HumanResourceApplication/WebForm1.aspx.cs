using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HumanResourceConnectionString"].ConnectionString);
            DataSet1 ds = new DataSet1();
            SqlDataAdapter da = new SqlDataAdapter("SELECT dbo.AddEmployee.* FROM dbo.AddEmployee ", con);
            da.Fill(ds);
           // int i = ds.Tables[0].Rows.Count;
            //CrystalReport1 cr = new CrystalReport1();
            //cr.SetDataSource(ds);
            //CrystalReportViewer1.ReportSource = cr;

        }
    }
}