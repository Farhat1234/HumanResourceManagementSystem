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
    public partial class EmployeeBankDetails : System.Web.UI.Page
    {
        HRMRef.Service1Client Proxy;
        HRMRef.BankDetails Bank;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new HRMRef.Service1Client();
            Bank = new HRMRef.BankDetails();
            if (!IsPostBack)
            {
                BindCountry();
            }
            if (!IsPostBack)
            {
                BindCountry1();
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

        public void BindState1()
        {
            int CountryID;
            int.TryParse(DrpCountry1.SelectedValue, out CountryID);

            DataTable dtState = HRMWcfService1.BALDropDownList.StateList(CountryID);

            DrpState1.DataSource = dtState;
            DrpState1.DataTextField = "StateName";
            DrpState1.DataValueField = "StateID";
            DrpState1.DataBind();
            DrpState1.Items.Insert(0, new ListItem("---Select State---"));
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

        private void BindCountry1()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtCountry = HRMWcfService1.BALDropDownList.CountryList();
            DrpCountry1.DataSource = dtCountry;
            DrpCountry1.DataTextField = "CountryName";
            DrpCountry1.DataValueField = "CountryID";
            DrpCountry1.DataBind();
            DrpCountry1.Items.Insert(0, new ListItem("---Select Country---"));
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

        public void BindCity1()
        {
            int StateID;
            int.TryParse(DrpState1.SelectedValue, out StateID);

            DataTable dtCity = HRMWcfService1.BALDropDownList.CityList(StateID);

            DrpCity1.DataSource = dtCity;
            DrpCity1.DataTextField = "CityName";
            DrpCity1.DataValueField = "CityID";
            DrpCity1.DataBind();
            DrpCity1.Items.Insert(0, new ListItem("---Select City---"));
        }


        protected void DrpCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindState();
        }


        protected void DrpState_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity();
        }

        protected void DrpCountry1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindState1();
        }


        protected void DrpState1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity1();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Bank.EmpId = Convert.ToInt32(Session["EmployeeID"]);
            Bank.AccountType = txtAccType.Text;
            Bank.AccountNo = txtAccNo.Text;
            Bank.BankName = txtBankName.Text;
            Bank.Country = DrpCountry.SelectedValue.ToString();
            Bank.IFSC = txtSIFSC.Text;
            Bank.RAccountType = txtRAccType.Text;
            Bank.RAccountNo = txtRAccNo.Text;
            Bank.RBankName = txtRBankName.Text;
            Bank.RCountry = DrpCountry1.SelectedValue.ToString();
            Bank.RIFSC = txtRIFSC.Text;
            Proxy.AddBankDetails(Bank);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            Clear();
            btnSubmit.Visible = false;
            btnUpdate.Visible = true;
            grdBankDetails.Visible = true;
        }

        public void Clear()
        {
            txtAccNo.Text = "";
            txtBankName.Text = "";
            txtSIFSC.Text = "";
            txtRAccNo.Text = "";
            txtRBankName.Text = "";
            txtRIFSC.Text = "";
        }
    }
}