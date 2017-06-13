using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Salary_Mgt
{
    public partial class PrintPreview : System.Web.UI.Page
    {
        EmpSea.EmpSeaClient Proxy;
        EmpSea.EmployeeSearch EmpSearch;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Proxy = new EmpSea.EmpSeaClient();
            EmpSearch = new EmpSea.EmployeeSearch();
        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<EmpSea.Salary> empsrch = Proxy.RetriveEmpID();
                DropDownList1.DataSource = empsrch;
                DropDownList1.DataTextField = "EmpID";
                DropDownList1.DataValueField = "EmpID";

                ListItem l = new ListItem();
                l.Text = "Select EmpID";
                l.Value = "-1";
                DropDownList1.AppendDataBoundItems = true;
                DropDownList1.Items.Add(l);
                DropDownList1.DataBind();

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Empid = int.Parse(DropDownList1.SelectedItem.Text);
            GridView1.DataSource = Proxy.SalaryGrid(Empid);
            GridView1.DataBind();
            //ListView1.DataSource = Proxy.SalaryGrid(Empid);
            //ListView1.DataBind();
            //GridView2.DataSource = Session["basic"].ToString();
            //GridView2.DataBind();
        }

    }
}