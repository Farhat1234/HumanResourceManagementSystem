using HRMWcfService1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Attendance_Mgt
{
    public partial class ApplyOnDuty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNIO();
            }
        }

        private void BindNIO()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtNIOType = HRMWcfService1.BALDropDownList.NIOType();
            ddlNIO.DataSource = dtNIOType;
            ddlNIO.DataTextField = "NIOType";
            ddlNIO.DataValueField = "NIOID";
            ddlNIO.DataBind();
            ddlNIO.Items.Insert(0, new ListItem("---Select NIO Type---"));
        }
    }
}