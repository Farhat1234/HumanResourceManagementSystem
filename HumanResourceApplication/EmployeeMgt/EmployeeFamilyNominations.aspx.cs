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
    public partial class EmployeeFamilyNominations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRelation();
            }
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