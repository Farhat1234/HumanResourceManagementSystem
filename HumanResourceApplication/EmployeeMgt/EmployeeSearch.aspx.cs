using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Employee_Mgt
{
    public partial class EmployeeSearch1 : System.Web.UI.Page
    {
        public int rbvalue;
        public string FName;
        EmpSea.EmpSeaClient Proxy;
        EmpSea.EmployeeSearch EmpSearch;
        static int FlagEmID =0;
        static int FlagName=0;
        int flagDes = 0, flagedep = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new EmpSea.EmpSeaClient();
            EmpSearch = new EmpSea.EmployeeSearch();
            
        }

        protected void RbtnSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ch;
            ch = RbtnSearch.SelectedItem.Text;
            try
            {
                switch (ch)
                {
                    case "EmpID": TbCode.Visible = true;
                        TbCode.Text = string.Empty;
                        FlagEmID = 1;
                        FlagName = 0;
                        //TbName.Visible = false;
                        break;
                    case "First Name":// TbName.Visible = true;
                        TbCode.Text=string.Empty;
                        TbCode.Visible = true;
                        FlagName = 1;
                        FlagEmID = 0;
                        break;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void ImgSearchbyOffbtn_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void ImgbtnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (FlagEmID == 1)
            {
                rbvalue = int.Parse(TbCode.Text);
                GridView1.DataSource = Proxy.EmpSearch(rbvalue);
            }
            if(FlagName==1)
            {
                FName = TbCode.Text;
                GridView1.DataSource = Proxy.EmpSearchName(FName);
            }
            if (flagedep==1&&flagDes==1)
            {
                FName = TbCode.Text;
                GridView1.DataSource = Proxy.EmpSearchDepDes(DrpDepartment.SelectedItem.Text, DrpDesignation.SelectedItem.Text);
                   
            }
            
            GridView1.DataBind();
            //Response.Write(rbvalue);
         }

        protected void DrpDesignation_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<EmpSea.EmlpoyeeSeachEditEmp> empsrch = Proxy.RetriveDesignation();
                DrpDesignation.DataSource = empsrch;
                DrpDesignation.DataTextField = "Designation";
                DrpDesignation.DataValueField="EmpID";
                
                ListItem l = new ListItem();
                l.Text = "Select Designation";
                l.Value = "-1";
                DrpDesignation.AppendDataBoundItems = true;
                DrpDesignation.Items.Add(l);
                DrpDesignation.DataBind();
                flagDes = 1;
                FlagEmID = 0;
                FlagName = 0;
                
            }
        }

        protected void DrpDepartment_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<EmpSea.EmlpoyeeSeachEditEmp> empsrch = Proxy.RetriveDepartment();
                DrpDepartment.DataSource = empsrch;
                DrpDepartment.DataTextField = "Dep";
                DrpDepartment.DataValueField = "EmpID";

                ListItem l = new ListItem();
                l.Text = "Select Designation";
                l.Value = "-1";
                DrpDepartment.AppendDataBoundItems = true;
                DrpDepartment.Items.Add(l);
                DrpDepartment.DataBind();
                
                

            }
        }

        protected void DrpDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            flagedep = 1;
            FlagEmID = 0;
            FlagName = 0;
        }

        protected void DrpDesignation_SelectedIndexChanged(object sender, EventArgs e)
        {
            flagDes = 1;
            FlagEmID = 0;
            FlagName = 0;
        }        
    }
}