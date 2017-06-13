using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Leave_Mgt
{
    public partial class LeaveHistory : System.Web.UI.Page
    {
        ServiceReference1.ApplyLeaveClient Proxy;
        ServiceReference1.ApplyLeave Apply;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new ServiceReference1.ApplyLeaveClient();
            Apply = new ServiceReference1.ApplyLeave();

            Apply.EmpID = Convert.ToInt32(Session["EmployeeID"]);

            DataSet ds = new DataSet();
            ds = Proxy.GetLeaveHistory(Apply.EmpID);

            grdLeaveHistory.DataSource = ds;
            grdLeaveHistory.DataBind();
        }
    }
}