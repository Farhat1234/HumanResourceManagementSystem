using System;
using System.Web.UI;

namespace HumanResourceApplication
{
    public partial class Login : System.Web.UI.Page
    {
        LoginService.LoginClient Proxy;
        LoginService.Login login;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new LoginService.LoginClient();
            login = new LoginService.Login();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {            
            login=  Proxy.LoginRep("", TbPass.Text, int.Parse(TbEmpID.Text));
            Session["EmployeeId"] = TbEmpID.Text;

            if (login.RoleID == 1)
            {
                Response.Redirect("~/Default.aspx");
            }

            else if (login.RoleID == 2)
            {
                Response.Redirect("EmployeeMgt/AddNewEmployee.aspx");
            }
            else
            {
                Response.Write("invalid");
            }
           
        }

    }
}