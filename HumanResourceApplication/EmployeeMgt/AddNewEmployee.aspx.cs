using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HumanResourceApplication;
using HRMWcfService1;

namespace HumanResourceApplication.Employee_Mgt
{
    public partial class AddNewEmployee : System.Web.UI.Page
    {
        HRMRef.Service1Client Proxy;
        HRMRef.Employee Employ;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new HRMRef.Service1Client();
            Employ = new HRMRef.Employee();
            //Random rdm = new Random();
            //TbEmpID.Text = rdm.Next(5401,5600).ToString();
            if (!IsPostBack)
            {
                BindCountry();
                BindCountry1();
                BindDesignation();
                BindDepartment();
                BindRole();
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

        private void BindRole()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtDesignation = HRMWcfService1.BALDropDownList.DesignationList();
            DrpRole.DataSource = dtDesignation;
            DrpRole.DataTextField = "DesignationType";
            DrpRole.DataValueField = "DesignationID";
            DrpRole.DataBind();
            DrpRole.Items.Insert(0, new ListItem("---Select Designation---"));
        }

        private void BindDesignation()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtDesignation = HRMWcfService1.BALDropDownList.DesignationList();
            ddlDesignation.DataSource = dtDesignation;
            ddlDesignation.DataTextField = "DesignationType";
            ddlDesignation.DataValueField = "DesignationID";
            ddlDesignation.DataBind();
            ddlDesignation.Items.Insert(0, new ListItem("---Select Designation---"));
        }

        private void BindDepartment()
        {
            BALDropDownList DDL = new BALDropDownList();

            DataTable dtDepartment = HRMWcfService1.BALDropDownList.Department();
            ddlDepartment.DataSource = dtDepartment;
            ddlDepartment.DataTextField = "DepartmentType";
            ddlDepartment.DataValueField = "DepartmentID";
            ddlDepartment.DataBind();
            ddlDepartment.Items.Insert(0, new ListItem("---Select Department---"));
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string[] base64String = new string[0];
            Employ.EmpID = int.Parse(TbEmpID.Text);
            Employ.EmpFirstName = TbEmpFname.Text;
            Employ.EmpLastName = TbEmpLname.Text;
            // Employ.CompanyName = TbCompy.Text;
            Employ.DOJ = Convert.ToDateTime(TbDOJ.Text);
            Employ.DOB = Convert.ToDateTime(TbDOB.Text);
            // Employ.Gender = RblGender.SelectedItem.Value;
            // Employ.Address = TbAddr.Text;
            Employ.City = DrpCity.SelectedItem.Text;
            Employ.State = DrpState.SelectedItem.Text;
            Employ.Phone = Convert.ToDecimal(TbPhne.Text);
            Employ.Email = TbEmail.Text;
            Employ.RoleID = int.Parse(DrpRole.SelectedValue);
            // Employ.Pass = TbPass.Text;
            Proxy.AddEmployee(Employ);
        }

        protected void FileUpload1_Load1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                Employ.Photo = bytes;
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                Employ.Photo = bytes;
            }
        }

    }
}