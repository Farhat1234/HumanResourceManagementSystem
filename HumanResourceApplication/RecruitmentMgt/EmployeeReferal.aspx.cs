using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRMWcfService1;
using System.Data;

namespace HumanResourceApplication.RecruitmentMgt
{
    public partial class EmployeeReferal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRelation();
            }
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

        private void BindRelation()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtRelation = HRMWcfService1.BALDropDownList.Relation();
            drpRelation.DataSource = dtRelation;
            drpRelation.DataTextField = "RelationType";
            drpRelation.DataValueField = "RelationID";
            drpRelation.DataBind();
            drpRelation.Items.Insert(0, new ListItem("---Select Relation---"));
        }

    }
}