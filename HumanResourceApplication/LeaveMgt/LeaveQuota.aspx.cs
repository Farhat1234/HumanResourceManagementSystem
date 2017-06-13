using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HumanResourceApplication.Leave_Mgt
{
    public partial class LeaveQuota : System.Web.UI.Page
    {
        ServiceReference1.ApplyLeaveClient Proxy;
        ServiceReference1.ApplyLeave Apply;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new ServiceReference1.ApplyLeaveClient();
            Apply = new ServiceReference1.ApplyLeave();

            Apply.EmpID = Convert.ToInt32(Session["EmployeeID"]);

            DataSet bindingDs = Proxy.GetLeaveQuota(Apply.EmpID);
            grdLeave.DataSource = bindingDs;
            grdLeave.DataBind();
         }
    }
}