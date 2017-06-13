<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeSearch.aspx.cs" Inherits="HumanResourceApplication.Employee_Mgt.EmployeeSearch1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="../Styles/form.css" rel="stylesheet" />
       <style>
     input[type="checkbox"] {
               margin: 16px -140px -29px!important;
            float:left;
        }
        input[type="radio"] {
          
       width: 11%!important;
    height: 18px;
    float: none;
    
}
        #ContentPlaceHolder1_GridView1{
            width:180%;
            height:100px;
        }
  td,th{
      text-align:center;
  }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
            <a href="../default.aspx">
                <img src="../images/profile.jpg" class="img-circle m-b" alt="logo">
            </a>

            <div class="stats-label text-color">
                <span class="font-extra-bold font-uppercase">Robert Razer</span>

                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <small class="text-muted">Founder <b class="caret"></b></small>
                    </a>
                    <ul class="dropdown-menu animated flipInX m-t-xs">
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="analytics.html">Analytics</a></li>
                        <li class="divider"></li>
                        <li><a href="login.aspx">Logout</a></li>
                    </ul>
                </div>


                <%--<div id="sparkline1" class="small-chart m-t-sm"></div>
                <div>
                    <h4 class="font-extra-bold m-b-xs">
                        $260 104,200
                    </h4>
                    <small class="text-muted">Your income from the last year in sales product X.</small>
                </div>--%>
            </div>
        </div>

          <ul class="nav" id="side-menu">
	<li class="active">
		<a href="../Default.aspx"> <span class="nav-label">Dashboard</span>  </a>
	</li>
	<li>
		<a href="#"><span class="nav-label">Employee Details</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../EmployeeMgt/AddNewEmployee.aspx">Add New Employee</a></li>
			<li><a href="../EmployeeMgt/EmployeeEducation.aspx">Education</a></li>
			<li><a href="../EmployeeMgt/EmployeePassport.aspx">Identity Proof</a></li>
			<li><a href="../EmployeeMgt/EmployeeFamilyNominations.aspx">Nomination</a></li>
			<li><a href="../EmployeeMgt/EmployeeBankDetails.aspx">Bank</a></li>
			<li><a href="../EmployeeMgt/EmployeeLoansAdvances.aspx">Loans & Advances</a></li>
			<li><a href="../EmployeeMgt/EmployeeReportingManager.aspx">Hierarchy</a></li>
			<li><a href="../EmployeeMgt/EmployeeSearch.aspx">Employee Search</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span class="nav-label">Attendance</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../AttendanceMgt/ApplyAttendance.aspx">Apply Attendance</a></li>
			<li><a href="../AttendanceMgt/ConsolidateAttandance.aspx">Consolidated</a></li>
			<li><a href="../AttendanceMgt/ApplyOnDuty.aspx">On Duty Request</a></li>
			<li><a href="../AttendanceMgt/OnDutyHistory.aspx">On Duty History</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span class="nav-label">Leave</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../LeaveMgt/ApplyLeave.aspx">Apply Leave</a></li>
			<li><a href="../LeaveMgt/ApproveLeaves.aspx">Approve Leave</a></li>
			<li><a href="../LeaveMgt/LeaveQuota.aspx">Leave Quota</a></li>
			<li><a href="../LeaveMgt/LeaveHistory.aspx">Leave History</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span class="nav-label">Recruitment</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../RecruitmentMgt/ListOfCareers.aspx">Careers</a></li>
			<li><a href="../RecruitmentMgt/PostingJob.aspx">Post A Job</a></li>
			<li><a href="../RecruitmentMgt/EmployeeReferal.aspx">Employee Referral</a></li>
			<li><a href="../RecruitmentMgt/IntimateHRReferal.aspx">Intimate HR Referrals</a></li>
		</ul>
	</li>
	  <li>
		<a href="#"><span class="nav-label">Payroll</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../SalaryMgt/Band A Payslip.aspx">Band Pay Slip</a></li>
			<li><a href="../SalaryMgt/Salary(Payslip).aspx">Salary Pay Slip</a></li>
			<li><a href="../SalaryMgt/PrintPreview.aspx">Print Preview</a></li>
		</ul>
	</li>
	<li>
		<a href="#" data-toggle="modal" data-target="#myModal"> <span class="nav-label">Holiday List</span></a>
	</li>
	 <div class="text-center">
							   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="color-line"></div>
						<div class="modal-header text-center">
							<h4 class="modal-title">Holiday List</h4>
							<small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
						</div>
						<div class="modal-body">

							<p><strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
								remaining essentially unchanged.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</div>
				</div>
			</div>
		</div>
                        <li>
		<a href="#"><span class="nav-label">Masters</span><span class="fa arrow"></span> </a>
		<ul class="nav nav-second-level">
			<li><a href="../Masters/DesignationMaster.aspx">Designation</a></li>
			<li><a href="../Masters/DepartmentMaster.aspx">Department</a></li>
			<li><a href="../Masters/LeavesMaster.aspx">Leaves</a></li>
            <li><a href="../Masters/LoansMaster.aspx">Loans</a></li>
            <li><a href="../Masters/GraduationMaster.aspx">Graduation</a></li>
            <li><a href="../Masters/PostGraduationMaster.aspx">Post Graduation</a></li>
              <li><a href="../Masters/DoctorateMaster.aspx">Doctorate</a></li>
              <li><a href="../Masters/DomainMaster.aspx">Domain</a></li>
		</ul>
	</li>
	<li>
		<a href="#"> <span class="nav-label">Report</span></a>
	</li>
</ul>
    </div>
</aside>


     <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3><B>Employee Search</B></h3>
                <small>Search Employee By ID or Name</small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                       
                         <div class="form-group">
			        <p>Search By</p>
			        <span class="icon-case"><i class="fa fa-info"></i></span>
				             <asp:RadioButtonList ID="RbtnSearch" runat="server" Font-Bold="True" Font-Italic="True"  RepeatDirection="Horizontal" RepeatLayout="Flow" Width="172px" AutoPostBack="True" OnSelectedIndexChanged="RbtnSearch_SelectedIndexChanged" Height="24px">
                    <asp:ListItem>EmpID</asp:ListItem>
                    <asp:ListItem>First Name</asp:ListItem>
                </asp:RadioButtonList>
     
                <asp:TextBox ID="TbCode" runat="server" Visible="False"></asp:TextBox>
       </div> 
                      <asp:ImageButton ID="ImgSearchbyOffbtn" runat="server" OnClick="ImgSearchbyOffbtn_Click" class="btn btn-success" />
                    <br />
                  <hr />
                    <p> Search By Official Information</p>
                     <asp:Panel ID="Panel1" runat="server" Height="81px" Width="579px" CssClass="cenn" Visible="False">



                              <div class="form-group">
			        <p>Department</p>
			        <span class="icon-case"><i class="fa fa-Home"></i></span>
				        <asp:DropDownList ID="DrpDepartment" runat="server" OnLoad="DrpDepartment_Load" OnSelectedIndexChanged="DrpDepartment_SelectedIndexChanged" class="dropdownlist">
                                </asp:DropDownList>
       </div> 

                          <div class="form-group">
                              <p> Designation</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:DropDownList ID="DrpDesignation" runat="server" OnLoad="DrpDesignation_Load" OnSelectedIndexChanged="DrpDesignation_SelectedIndexChanged"  class="dropdownlist" >
                                </asp:DropDownList>

                              </div>      
                         
                <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" BorderColor="#878787" BorderWidth="2px">
                    <HeaderStyle BackColor="#afafaf" />
                </asp:GridView>
                <br />
                                             
                <asp:ImageButton ID="ImgbtnSearch" runat="server"  OnClick="ImgbtnSearch_Click" class="btn btn-success" />                                              
                </asp:Panel> 



        



                    </div>
                </div></div></div>



</asp:Content>
