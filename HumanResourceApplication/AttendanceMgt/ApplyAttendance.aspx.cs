using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRMWcfService1;
using System.Data;

namespace HumanResourceApplication.Attendance_Mgt
{
    public partial class ApplyAttendance : System.Web.UI.Page
    {
        DailyAttend.DailyAttendanceClient Proxy;
        DailyAttend.DailyAttendance datt;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new DailyAttend.DailyAttendanceClient();
            datt = new DailyAttend.DailyAttendance();
            if (!IsPostBack)
            {
                BindDepartment();
            }
        }

        private void BindDepartment()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtLeaveType = HRMWcfService1.BALDropDownList.Department();
            DrpDesignation.DataSource = dtLeaveType;
            DrpDesignation.DataTextField = "DepartmentType";
            DrpDesignation.DataValueField = "DepartmentID";
            DrpDesignation.DataBind();
            DrpDesignation.Items.Insert(0, new ListItem("---Select Department---"));
        }
        protected void ImgBtnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            datt.EmpID = int.Parse(TbEmpID.Text);
            datt.EmpName = TbEmpName.Text;
            datt.Department = DrpDesignation.SelectedItem.Text;
            datt.Month = DrpMonth.SelectedItem.Text;
            datt.Year =int.Parse(DrpYear.SelectedItem.Text);
            datt.Date =Convert.ToDateTime(DrpDate.SelectedItem.Text);
            datt.InTime = Convert.ToDateTime(TbINTime.Text);
            datt.OutTime = Convert.ToDateTime(TbOUTTime.Text);
            datt.Punching =Convert.ToChar(RblPunch.SelectedItem.Text);
            Proxy.DailyAttend(datt);
            //Label11.Text = "sucess";
        }

        
    }
}