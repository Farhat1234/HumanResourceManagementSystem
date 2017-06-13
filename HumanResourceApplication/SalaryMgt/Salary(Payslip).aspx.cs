using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Salary_Mgt
{
    public partial class Salary_Payslip_ : System.Web.UI.Page
    {
        public double huse,appris,Testhuse,Techhuse,Prodhuse,deduct,Earn,AprsPerc,Appraisal=0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //calculating the freshers salary
        public double percntage(double a, double b)
        {
            double c = (a * b) / 100;
            return c;
        }
        //calculateing the appraisal
        public double apprisalpercent(double a, double b)
        {
            double d, basic = 10200;
            d = (a * b) / 100;
            appris = basic + d;
            return appris;
        }
        protected void DrpDomain_SelectedIndexChanged(object sender, EventArgs e)
        {
            string choice;
            huse= percntage(40,10200);
             Testhuse = percntage(40,9500);
             Techhuse = percntage(40,8200);
            choice = DrpDomain.SelectedItem.Text;
            switch(choice)
            {
                case "Development": TbBscSal.Text="10,200";
                    Session["basic"] = TbBscSal.Text;
                    TbHuseAllw.Text = huse.ToString();
                    TbEduAllw.Text = "100";
                    TbConvyAllw.Text = "300";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "400";
                    TbAppraisal.Text="0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "1,800";
                    TbProfTax.Text = "150";
                    TbProvdTax.Text = "400";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty;
                       break;
                case "Testing": TbBscSal.Text = "9,500";
                       TbHuseAllw.Text = Testhuse.ToString();
                     TbEduAllw.Text = "100";
                    TbConvyAllw.Text = "300";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "400";
                    TbAppraisal.Text = "0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "1,800";
                    TbProfTax.Text = "150";
                    TbProvdTax.Text = "400";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty; 
                               break;

                case "Technical Support": TbBscSal.Text = "8,200";
                               TbHuseAllw.Text = Techhuse.ToString();
                               TbEduAllw.Text = "100";
                               TbConvyAllw.Text = "300";
                               TbLTA.Text = "-";
                               TbMedAllw.Text = "400";
                               TbAppraisal.Text = "0";
                               TbPerfAllw.Text = "-";
                               TbSplAllw.Text = "1,800";
                               TbProfTax.Text = "150";
                               TbProvdTax.Text = "400";
                               TbOtherDeductions.Text = "900";
                               lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty; 
                    break;

            }
        }
        public double Earnings(double basic, double house)
        {
            Earn = basic + house + 100 + 300 + 400 + 1800;
           // Response.Write(Earn);
            LblEaring.Text = Earn.ToString();
            return Earn;
        }
        public double Earning(double basic, double house,double Appraisal)
        {
            Earn = basic + house + 100 + 300 + 400 + 1800 + Appraisal;
            // Response.Write(Earn);
            LblEaring.Text = Earn.ToString();
            return Earn;
        }
        public double Deductions()
        {
            deduct = 900 + 400 + 150;
            LblDeductions.Text = deduct.ToString();
            return deduct;
        }
        public double GrossPay()
        {
            double Gross;
            Gross = Earn - deduct;
            lblnetsal.Text = Gross.ToString();
            return Gross;
        }
        protected void ImgBtnCalculate_Click(object sender, ImageClickEventArgs e)
        {
           if(TbAppraisal.Text != null)
           {
            Earning(double.Parse(TbBscSal.Text), double.Parse(TbHuseAllw.Text), double.Parse(TbAppraisal.Text));
           }
            else
           {
            Earnings(double.Parse(TbBscSal.Text), double.Parse(TbHuseAllw.Text));
           }
            Deductions();
            GrossPay();
            
        }

        protected void DrpAprsPerc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ch;
            ch = DrpAprsPerc.SelectedItem.Text;
            switch(ch)
            {
                case "5%":AprsPerc= percntage(5,double.Parse(TbBscSal.Text));
                    TbAppraisal.Text=AprsPerc.ToString();
                    break;
                case "6%": AprsPerc = percntage(6, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString();
                    break;
                case "8%": AprsPerc = percntage(8, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString();
                    break;
                case "10%": AprsPerc = percntage(10, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString(); 
                    break;
                case "15%": AprsPerc = percntage(15, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString(); 
                    break;
                case "20%": AprsPerc = percntage(20, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString();
                    break;
                case "25%": AprsPerc = percntage(25, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString();
                    break;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PrintPreview.aspx");
        }
    }
}