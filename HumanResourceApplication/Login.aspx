<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HumanResourceApplication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
     #header
{
 display:none;
}
     #menu{
         display:none;
     }
     input{
            height: 45px;
    width: 220px;
    border: 1px solid grey;
    border-radius: 4px;
    margin: 10px 30px;
    box-shadow: 2px 2px 2px #a0a0a0;
     }
     .hpanel .panel-body {
       background: #fff;
    border: 0px solid #eaeaea;
    border-radius: 2px;
    padding: 40px;
    position: relative;
    width: 135%;
    right: 10%;
        box-shadow: 2px 1px 18px #606060;
}
     #wrapper {
         margin: 0 0 0 0px;
         padding: 0;
         background: rgba(49, 121, 114, 0.65);
         border-left: 1px solid #eaeaea;
         transition: margin .4s ease 0s;
         position: relative;
         color: black;
         background-image:url("Images/login-bg.jpg");
     }
     .btn-success {
         background-color: #62cb31;
         border-color: #62cb31;
         color: #fff;
         
     }
     .btn-link {
    color: inherit;
    margin: 70px -33px -60px -71px;
}
 </style>
    <!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>HRMS</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>

<div class="color-line"></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    
    

<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h1>PLEASE LOGIN TO APPLICATION</h1>
                <h3>Human Resources</h3>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        
               
    
    
       <table>
            <tr>
                <td>
         <%-- <nav>
        <ul>
        <li><a href="EmployeeMgt/AddNewEmployee.aspx"><span></span> Register Here </a></li>
        <li> <a href="#"><span></span>Forgot Password</a></li>
    </ul>
    </nav>--%>
                </td>
                <td class="auto-style2">
        <table class="style1">
            <tr>
                <td class="style4">
                   <h3> Employee ID</h3>
                     </td>
                <td class="style3">
                    <asp:TextBox ID="TbEmpID" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Email ID"></asp:Label>
                     </td>
                <td class="style3">
                    <asp:TextBox ID="TbEmail" runat="server" Height="22px" Width="154px"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td class="style4">
                 <h3>Password</h3>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TbPass" runat="server"
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <a href="#" class="btn btn-link">New Employee Registration</a>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                      OnClick="ImageButton1_Click" class="btn btn-success" AlternateText="Login"/>
                     </td>
            </tr>
        </table>
                    </td>
                </tr>

            </table>
        </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
