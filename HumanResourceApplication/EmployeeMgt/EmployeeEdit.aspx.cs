using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Employee_Mgt
{
    public partial class EmployeeSearch : System.Web.UI.Page
    {
        EmpSea.EmpSeaClient Proxy;
        EmpSea.EmployeeSearch EmpSearch;
        EmpSea.EmployeeEdit EmplyEdit;
        HRMRef.Service1Client ProxyEmploy;
        int flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new EmpSea.EmpSeaClient();
            EmpSearch = new EmpSea.EmployeeSearch();
            ProxyEmploy = new HRMRef.Service1Client();
            EmplyEdit = new EmpSea.EmployeeEdit();
          //  Load();



            flag = Proxy.CheckEmpIDEdit(5418);
            if (flag == 1)
            {
                Load();
            }

            else
            {
                flag = 0;
               // Label57.Visible = false;

            }

        }

        protected void TbPanID_TextChanged(object sender, EventArgs e)
        {
             //flag = Proxy.CheckPanCardIDExist(TbPanID.Text);
            if (flag == 1)
            {
                //Label57.Visible = true;
                //Label57.Text = "this pancard exists";
            }
            
            else
            {
                flag = 0;
                //Label57.Visible = false;

            }
        }

        

        protected void gridview1_Load(object sender, EventArgs e)
        {
            gridview1.DataSource = ProxyEmploy.RetriveEmpIDImage(5402);
            gridview1.DataBind();
        }

        protected void drpStatePA_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<HRMRef.StateCity> st = ProxyEmploy.GetStates();
                //DropDownList2.Items.Clear();
                drpStatePA.DataSource = st;
                drpStatePA.DataTextField = "StateName";
                drpStatePA.DataValueField = "StateID";
                ListItem l = new ListItem();
                l.Text = "Select State";
                l.Value = "-1";
                drpStatePA.AppendDataBoundItems = true;
                drpStatePA.Items.Add(l);
                drpStatePA.DataBind();
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (flag == 0)
            {
                EmplyEdit.EmpID = 5402;
                //EmplyEdit.BankAC = int.Parse(TBBankAC.Text);
                //EmplyEdit.PFno = int.Parse(TbPFNo.Text);
                //EmplyEdit.PanNo = TbPanID.Text;
                //EmplyEdit.Dept = TbDep.Text;
                //EmplyEdit.Designation = TbDesgination.Text;
                //EmplyEdit.Category = Tbcategory.Text;
                //EmplyEdit.FirstApp = TbfrstAprover.Text;
                //EmplyEdit.SecndApp = TbsecApprv.Text;
                //EmplyEdit.RprtigMgr = TbRptingMang.Text;
                //EmplyEdit.WeekOF = TbWeekoff.Text;
                //EmplyEdit.CurntShif = TbcurShift.Text;
                //EmplyEdit.FatherName = TbFatherName.Text;
                //EmplyEdit.MotherName = TbMothername.Text;
                //EmplyEdit.AadharNo = Convert.ToDecimal(TbAdharCard.Text);
                //EmplyEdit.DrivingLCNo = Convert.ToDecimal(TbDriving.Text);
                //EmplyEdit.EmergncyPhne = Convert.ToDecimal(TbEmergency.Text);
                //EmplyEdit.AlternateEmail = Tbalternateemail.Text;
                //EmplyEdit.MotherTongue = TbmotherTongue.Text;
                //EmplyEdit.MaritalStus = RadioButtonList1.SelectedItem.Text;
                //EmplyEdit.BlodGrp = TbbloodGrp.Text;
                //EmplyEdit.Nationality = TbNationality.Text;
                //EmplyEdit.Religion = drpReligion.SelectedItem.Text;
                //EmplyEdit.IdentificationMark = TbIdentification.Text;
                EmplyEdit.PCaddr = TbAddress.Text;
                EmplyEdit.PCcity = drpCtiyPA.SelectedItem.Text;
                EmplyEdit.PCstate = drpStatePA.SelectedItem.Text;
                EmplyEdit.PCpincode = Convert.ToDecimal(TbPinCode.Text);
                EmplyEdit.CCaddr = TbAddressCur.Text;
                EmplyEdit.CCcity = drpCityCA.SelectedItem.Text;
                EmplyEdit.CCstate = drpStateCA.SelectedItem.Text;
                //EmplyEdit.PassportNo = TbPasswrd.Text;
                //EmplyEdit.Name = TbName.Text;
                //EmplyEdit.IssueDate = Convert.ToDateTime(TbIssuedate.Text);
                //EmplyEdit.ExpiryDate = Convert.ToDateTime(Tbexprdate.Text);
                Proxy.AddEditEmployee(EmplyEdit);
            }
            else
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Record inserted already')</script>");
        }

        protected void drpStatePA_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid = int.Parse(drpStatePA.SelectedItem.Value);
            drpCtiyPA.DataSource = ProxyEmploy.GetCity(stateid);
            drpCtiyPA.DataTextField = "CityName";
            drpCtiyPA.DataValueField = "StateID";
            drpCtiyPA.DataBind();
        }

        protected void drpStateCA_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<HRMRef.StateCity> st = ProxyEmploy.GetStates();
                //DropDownList2.Items.Clear();
                drpStateCA.DataSource = st;
                drpStateCA.DataTextField = "StateName";
                drpStateCA.DataValueField = "StateID";
                ListItem l = new ListItem();
                l.Text = "Select State";
                l.Value = "-1";
                drpStateCA.AppendDataBoundItems = true;
                drpStateCA.Items.Add(l);
                drpStateCA.DataBind();
            }
        }

        protected void drpStateCA_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid = int.Parse(drpStateCA.SelectedItem.Value);
            drpCityCA.DataSource = ProxyEmploy.GetCity(stateid);
            drpCityCA.DataTextField = "CityName";
            drpCityCA.DataValueField = "StateID";
            drpCityCA.DataBind();
        }

        protected void ImgBtnview_Click(object sender, ImageClickEventArgs e)
        {
            Load();
        }

        protected void ImgBtnUpdate_Click(object sender, ImageClickEventArgs e)
        {
            EmplyEdit.EmpID = 5402;
            //EmplyEdit.BankAC = int.Parse(TBBankAC.Text);
            //EmplyEdit.PFno = int.Parse(TbPFNo.Text);
            //EmplyEdit.PanNo = TbPanID.Text;
            //EmplyEdit.Dept = TbDep.Text;
            //EmplyEdit.Designation = TbDesgination.Text;
            //EmplyEdit.Category = Tbcategory.Text;
            //EmplyEdit.FirstApp = TbfrstAprover.Text;
            //EmplyEdit.SecndApp = TbsecApprv.Text;
            //EmplyEdit.RprtigMgr = TbRptingMang.Text;
            //EmplyEdit.WeekOF = TbWeekoff.Text;
            //EmplyEdit.CurntShif = TbcurShift.Text;
            //EmplyEdit.FatherName = TbFatherName.Text;
            //EmplyEdit.MotherName = TbMothername.Text;
            //EmplyEdit.AadharNo = Convert.ToDecimal(TbAdharCard.Text);
            //EmplyEdit.DrivingLCNo = Convert.ToDecimal(TbDriving.Text);
            //EmplyEdit.EmergncyPhne = Convert.ToDecimal(TbEmergency.Text);
            //EmplyEdit.AlternateEmail = Tbalternateemail.Text;
            //EmplyEdit.MotherTongue = TbmotherTongue.Text;
            //EmplyEdit.MaritalStus = RadioButtonList1.SelectedItem.Text;
            //EmplyEdit.BlodGrp = TbbloodGrp.Text;
            //EmplyEdit.Nationality = TbNationality.Text;
            //EmplyEdit.Religion = drpReligion.SelectedItem.Text;
            //EmplyEdit.IdentificationMark = TbIdentification.Text;
            EmplyEdit.PCaddr = TbAddress.Text;
            EmplyEdit.PCcity = drpCtiyPA.SelectedItem.Text;
            EmplyEdit.PCstate = drpStatePA.SelectedItem.Text;
            EmplyEdit.PCpincode = Convert.ToDecimal(TbPinCode.Text);
            EmplyEdit.CCaddr = TbAddressCur.Text;
            EmplyEdit.CCcity = drpCityCA.SelectedItem.Text;
            EmplyEdit.CCstate = drpStateCA.SelectedItem.Text;
            //EmplyEdit.PassportNo = TbPasswrd.Text;
            //EmplyEdit.Name = TbName.Text;
            //EmplyEdit.IssueDate = Convert.ToDateTime(TbIssuedate.Text);
            //EmplyEdit.ExpiryDate = Convert.ToDateTime(Tbexprdate.Text);
            Proxy.EmployUpdate(EmplyEdit);
        }


        void Load()
        {
            EmplyEdit = Proxy.ViewDetail(5418);

            {
                EmplyEdit.EmpID = 5402;
                //TBBankAC.Text = EmplyEdit.BankAC.ToString();
                //TbPFNo.Text = EmplyEdit.PFno.ToString();
                //TbPanID.Text = EmplyEdit.PanNo;
                //TbDep.Text = EmplyEdit.Dept;
                // TbDesgination.Text=EmplyEdit.Designation ;
                // Tbcategory.Text=EmplyEdit.Category;
                // TbfrstAprover.Text=EmplyEdit.FirstApp;
                // TbsecApprv.Text = EmplyEdit.SecndApp;
                // TbRptingMang.Text = EmplyEdit.RprtigMgr;
                // TbWeekoff.Text = EmplyEdit.WeekOF;
                // TbcurShift.Text = EmplyEdit.CurntShif;
                // TbFatherName.Text = EmplyEdit.FatherName;
                // TbMothername.Text = EmplyEdit.MotherName;
                // TbAdharCard.Text = EmplyEdit.AadharNo.ToString();
                // TbDriving.Text = EmplyEdit.DrivingLCNo.ToString();
                // TbEmergency.Text = EmplyEdit.EmergncyPhne.ToString();
                // Tbalternateemail.Text = EmplyEdit.AlternateEmail;
                // TbmotherTongue.Text=EmplyEdit.MotherTongue ;
                // RadioButtonList1.Text = EmplyEdit.MaritalStus;
                // TbbloodGrp.Text = EmplyEdit.BlodGrp;
                // TbNationality.Text = EmplyEdit.Nationality;
                // drpReligion.SelectedItem.Text = EmplyEdit.Religion;
                // TbIdentification.Text = EmplyEdit.IdentificationMark;
                // TbAddress.Text = EmplyEdit.PCaddr;
                /// drpCtiyPA.Text = EmplyEdit.PCcity;
                 //drpStatePA.Text = EmplyEdit.PCstate;
                 TbPinCode.Text = EmplyEdit.PCpincode.ToString();
                 TbAddressCur.Text = EmplyEdit.CCaddr;
                // drpCityCA.Text = EmplyEdit.CCcity;
               //  drpStateCA.Text = EmplyEdit.CCstate;
                 //TbPasswrd.Text = EmplyEdit.PassportNo;
                 //TbName.Text = EmplyEdit.Name;
                 ////TbPinCodeCA = EmplyEdit.CCpincode.ToString();
                 //TbIssuedate.Text = EmplyEdit.IssueDate.ToString();
                 //Tbexprdate.Text = EmplyEdit.ExpiryDate.ToString();
                

            }
        }
      

        
      
    }

       
}