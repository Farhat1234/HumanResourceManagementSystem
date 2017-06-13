using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.Salary_Mgt
{
    public partial class Band_A_Payslip : System.Web.UI.Page
    {
        public double huse, appris, Testhuse, Techhuse, Prodhuse, deduct, Earn, AprsPerc, Appraisal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //calculating the freshers salary
        public double percntage(double a, double b)
        {
            double c = (a * b) / 100;
            return c;
        }
        public double Earnings(double basic, double house)
        {
            Earn = basic + house + 100 + 300 + 400 + 1800;
            // Response.Write(Earn);
            LblEaring.Text = Earn.ToString();
            return Earn;
        }
        public double Earning(double basic, double house, double Appraisal)
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
        protected void DrpDomain_SelectedIndexChanged(object sender, EventArgs e)
        {
            string choice;
            huse = percntage(40, 18200);
            Testhuse = percntage(40, 14500);
            Prodhuse = percntage(40,17000);
            Techhuse = percntage(40,13200);
            choice = DrpDomain.SelectedItem.Text;
            switch (choice)
            {
                case "Development": TbBscSal.Text = "18,200";
                    TbHuseAllw.Text = huse.ToString();
                    TbEduAllw.Text = "200";
                    TbConvyAllw.Text = "500";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "600";
                    TbAppraisal.Text = "0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "2,200";
                    TbProfTax.Text = "250";
                    TbProvdTax.Text = "600";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty;
                    break;
                case "Production": TbBscSal.Text = "17,000";
                    TbHuseAllw.Text = Testhuse.ToString();
                    TbEduAllw.Text = "200";
                    TbConvyAllw.Text = "500";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "600";
                    TbAppraisal.Text = "0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "2,200";
                    TbProfTax.Text = "250";
                    TbProvdTax.Text = "600";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty;
                    break;
                case "Testing": TbBscSal.Text = "14,500";
                    TbHuseAllw.Text = Prodhuse.ToString();
                     TbEduAllw.Text = "200";
                    TbConvyAllw.Text = "500";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "600";
                    TbAppraisal.Text = "0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "2,200";
                    TbProfTax.Text = "250";
                    TbProvdTax.Text = "600";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty;
                    break;

                case "Technical Support": TbBscSal.Text = "13,200";
                    TbHuseAllw.Text = Techhuse.ToString();
                     TbEduAllw.Text = "200";
                    TbConvyAllw.Text = "500";
                    TbLTA.Text = "-";
                    TbMedAllw.Text = "600";
                    TbAppraisal.Text = "0";
                    TbPerfAllw.Text = "-";
                    TbSplAllw.Text = "2,200";
                    TbProfTax.Text = "250";
                    TbProvdTax.Text = "600";
                    TbOtherDeductions.Text = "900";
                    lblnetsal.Text = LblDeductions.Text = LblEaring.Text = string.Empty;
                    break;

            }
        }

        protected void DrpAprsPerc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ch;
            ch = DrpAprsPerc.SelectedItem.Text;
            switch (ch)
            {
                case "5%": AprsPerc = percntage(5, double.Parse(TbBscSal.Text));
                    TbAppraisal.Text = AprsPerc.ToString();
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

        protected void ImgBtnCalculate_Click(object sender, ImageClickEventArgs e)
        {
            if (TbAppraisal.Text != null)
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
    }
}