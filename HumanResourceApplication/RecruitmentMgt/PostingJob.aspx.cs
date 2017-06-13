using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRMWcfService1;
using System.Data;

namespace HumanResourceApplication.Recruitment_Mgt
{
    public partial class PostingJob : System.Web.UI.Page
    {
        jobservice.JOBClient Proxy;
        jobservice.JobPosting jpst;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new jobservice.JOBClient();
            jpst = new jobservice.JobPosting();
            if (!IsPostBack)
            {
                BindDomain();
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


        private void BindDomain()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtDomain = HRMWcfService1.BALDropDownList.JobDomain();
            DrpDomain.DataSource = dtDomain;
            DrpDomain.DataTextField = "JobDomainType";
            DrpDomain.DataValueField = "JobDomainID";
            DrpDomain.DataBind();
            DrpDomain.Items.Insert(0, new ListItem("---Select Job Domain---"));
        }
        
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            jpst.JobDomain = DrpDomain.SelectedItem.Text;
            jpst.JobTitle = TbTitle.Text;
            jpst.Email = TbEmail.Text;
            jpst.Skills = TbSkills.Text;
           // jpst.Expierence = DrpExpi.SelectedItem.Text;
           // jpst.Qualification = DrpQualif.SelectedItem.Text;
            //jpst.Company = TbCompName.Text;
            jpst.NofEmp = int.Parse(TbNofemp.Text);
            //jpst.EmpID = int.Parse(TbEmpID.Text);
            Proxy.Posting(jpst);
            Label3.Visible =true;
            Label3.Text = "insert";


             //ClientScript.RegisterStartupScript(Page.GetType(), "key", "alert('Button Clicked')", true);
       
        }
    }
}