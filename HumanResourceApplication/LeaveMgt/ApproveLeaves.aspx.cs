using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Leave_Mgt
{
    public partial class ApproveLeaves : System.Web.UI.Page
    {
        ServiceReference1.ApplyLeaveClient Proxy;
        ServiceReference1.ApplyLeave Apply;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new ServiceReference1.ApplyLeaveClient();
            Apply = new ServiceReference1.ApplyLeave();

            if (!IsPostBack)
            {               
                DataSet ds = new DataSet();
                ds = Proxy.GetAllLeavesPending();
                grdApproveLeave.DataSource = ds;
                grdApproveLeave.DataBind();
            }
            
        }

        protected void grdApproveLeave_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());

                Label lblEmpId = (Label)grdApproveLeave.Rows[index].FindControl("EmployeeID");
                Label lblFromDate = (Label)grdApproveLeave.Rows[index].FindControl("FromDate");

                Proxy.ApproveLeaves(Convert.ToInt32(lblEmpId.Text),Convert.ToDateTime(lblFromDate.Text));

                DataSet ds = new DataSet();
                ds = Proxy.GetAllLeavesPending();
                grdApproveLeave.DataSource = ds;
                grdApproveLeave.DataBind();
            }            
        }
    }
}