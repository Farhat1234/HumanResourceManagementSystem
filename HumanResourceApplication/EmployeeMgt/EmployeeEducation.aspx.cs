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
    public partial class EmployeeEducation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountry();
            }
        }

        public void BindState()
        {
            int CountryID;
            int.TryParse(DrpCountry.SelectedValue, out CountryID);

            DataTable dtState = HRMWcfService1.BALDropDownList.StateList(CountryID);

            DrpState.DataSource = dtState;
            DrpState.DataTextField = "StateName";
            DrpState.DataValueField = "StateID";
            DrpState.DataBind();
            DrpState.Items.Insert(0, new ListItem("---Select State---"));
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

        public void BindCity()
        {
            int StateID;
            int.TryParse(DrpState.SelectedValue, out StateID);

            DataTable dtCity = HRMWcfService1.BALDropDownList.CityList(StateID);

            DrpCity.DataSource = dtCity;
            DrpCity.DataTextField = "CityName";
            DrpCity.DataValueField = "CityID";
            DrpCity.DataBind();
            DrpCity.Items.Insert(0, new ListItem("---Select City---"));
        }

        protected void DrpCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindState();
        }

        protected void DrpState_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity();
        }

        protected void ddlEducation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlEducation.SelectedItem.Value == "Graduation")
            {
                BindGraduation();
            }
            else if (ddlEducation.SelectedItem.Value == "Post Graduation")
            {
                BindPostGraduation();
            }
            else if (ddlEducation.SelectedItem.Value == "Doctorate")
            {
                BindDoctorate();
            }
            else
            {
                drpBranchOfStudy.Items.Clear();
            }
        }

        private void BindDoctorate()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtDoctorate = HRMWcfService1.BALDropDownList.DoctorateList();
            drpBranchOfStudy.DataSource = dtDoctorate;
            drpBranchOfStudy.DataTextField = "DoctorateType";
            drpBranchOfStudy.DataValueField = "DoctorateID";
            drpBranchOfStudy.DataBind();
            drpBranchOfStudy.Items.Insert(0, new ListItem("---Select Doctorate In---"));
        }

        private void BindPostGraduation()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtPostGraduation = HRMWcfService1.BALDropDownList.PostGraduationList();
            drpBranchOfStudy.DataSource = dtPostGraduation;
            drpBranchOfStudy.DataTextField = "PGType";
            drpBranchOfStudy.DataValueField = "PGID";
            drpBranchOfStudy.DataBind();
            drpBranchOfStudy.Items.Insert(0, new ListItem("---Select Post Graduation In---"));
        }

        private void BindGraduation()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtGraduation = HRMWcfService1.BALDropDownList.GraduationList();
            drpBranchOfStudy.DataSource = dtGraduation;
            drpBranchOfStudy.DataTextField = "DegreeType";
            drpBranchOfStudy.DataValueField = "DegreeID";
            drpBranchOfStudy.DataBind();
            drpBranchOfStudy.Items.Insert(0, new ListItem("---Select Graduation In---"));
        }

    }
}