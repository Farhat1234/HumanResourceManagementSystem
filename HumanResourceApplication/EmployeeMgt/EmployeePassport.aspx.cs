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
    public partial class EmployeePassport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountry();
                BindNationality();
            }
        }

        private void BindNationality()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtNationality = HRMWcfService1.BALDropDownList.Nationality();
            ddlNationality.DataSource = dtNationality;
            ddlNationality.DataTextField = "NationalityType";
            ddlNationality.DataValueField = "NationalityID";
            ddlNationality.DataBind();
            ddlNationality.Items.Insert(0, new ListItem("---Select Nationality---"));
        }

        private void BindCountry()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtCountry = HRMWcfService1.BALDropDownList.CountryList();
            DrpCountry.DataSource = dtCountry;
            DrpCountry.DataTextField = "CountryName";
            DrpCountry.DataValueField = "CountryID";
            DrpCountry.DataBind();
            DrpCountry.Items.Insert(0, new ListItem("---Select Country---"));
        }
    }
}