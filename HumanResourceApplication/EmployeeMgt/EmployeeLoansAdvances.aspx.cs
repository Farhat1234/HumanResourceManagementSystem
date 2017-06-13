using HRMWcfService1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.EmployeeMgt
{
    public partial class EmployeeLoansAdvances : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindLoanAdvances();
            }
        }

        private void BindLoanAdvances()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtLoanAdvances = HRMWcfService1.BALDropDownList.LoanAdvance();
            drpLoanAdvance.DataSource = dtLoanAdvances;
            drpLoanAdvance.DataTextField = "LoanType";
            drpLoanAdvance.DataValueField = "LoanID";
            drpLoanAdvance.DataBind();
            drpLoanAdvance.Items.Insert(0, new ListItem("---Select Loan/Advance Type---"));
        }


    }
}