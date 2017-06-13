using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HRMWcfService1;

namespace HumanResourceApplication.Leave_Mgt
{
    public partial class ApplyLeave : System.Web.UI.Page
    {
        ServiceReference1.ApplyLeaveClient Proxy;
        ServiceReference1.ApplyLeave Apply ;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new ServiceReference1.ApplyLeaveClient();
            Apply = new ServiceReference1.ApplyLeave();
            if (!IsPostBack)
            {
                BindLeaveType();
            }
        }

        private void BindLeaveType()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtLeaveType = HRMWcfService1.BALDropDownList.LeaveType();
            drpLeaveType.DataSource = dtLeaveType;
            drpLeaveType.DataTextField = "LeaveType";
            drpLeaveType.DataValueField = "LeaveID";
            drpLeaveType.DataBind();
            drpLeaveType.Items.Insert(0, new ListItem("---Select Leave Type---"));
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["EmployeeId"] != null)
            {
                Apply.EmpID = Convert.ToInt32(Session["EmployeeId"]);
            }
            else
            {
                 //do nothing
            }
            Apply.FromDate =Convert.ToDateTime(TbFromDte.Text);
            Apply.Todate = Convert.ToDateTime(TbToDate.Text);
            Apply.NofDays = int.Parse(TbNofDys.Text);
            Apply.Reason = TbReson.Text;
            Apply.LeaveTypeID = Convert.ToInt32(drpLeaveType.SelectedValue);
            Proxy.ApplyLeav(Apply);

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            Apply.FromDate = Convert.ToDateTime(TbFromDte.Text);
            Apply.Todate = Convert.ToDateTime(TbToDate.Text);
            TimeSpan noOfDays = (Apply.Todate - Apply.FromDate);
            Apply.NofDays = noOfDays.Days;
            TbNofDys.Text = noOfDays.Days.ToString();
        }

      
    }
}