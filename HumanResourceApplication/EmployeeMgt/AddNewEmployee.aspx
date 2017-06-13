<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddNewEmployee.aspx.cs" Inherits="HumanResourceApplication.Employee_Mgt.AddNewEmployee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Styles/form.css" rel="stylesheet" />
    <style>
        input[type="checkbox"] {
            margin: 16px -140px -29px !important;
            float: left;
        }

      input[type="radio"] {
    width: 100% !important;
    height: 18px;
    float: none;
    margin: 11px 21px -18px;
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
            </div>
        </div>
          <ul class="nav" id="side-menu">
	<li class="active">
		<a href="../Default.aspx"> <span class="nav-label">Dashboard</span></a>
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
                <h3><b>Add New Employee</b></h3>
                <small>Fill the form to submit the Employee Details </small>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="hpanel">
                <div class="panel-body">
                    <h2>Employee Basic Information</h2>
                    <div class="contentform">
                        <div class="leftcontact">
                            <div class="form-group">
                                <p>Employee ID</p>
                                <span class="icon-case"><i class="fa fa-id-card"></i></span>
                                <asp:TextBox ID="TbEmpID" runat="server" Enabled="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Department</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:DropDownList ID="ddlDepartment" runat="server" class="dropdownlist">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <p>First Name</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbEmpFname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TbEmpFname" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Gender</p>
                                <span class="icon-case"><i class="fa fa-male"></i></span>
                                <asp:RadioButtonList runat="server" ID="gender" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <p>Date of Joining</p>
                                <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbDOJ" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TbDOJ" runat="server"></asp:TextBox>
                                <cc1:CalendarExtender ID="TbDOJ_CalendarExtender" runat="server" Enabled="True"
                                    TargetControlID="TbDOJ">
                                </cc1:CalendarExtender>
                            </div>
                            <div class="form-group">
                                <p>Phone Number</p>
                                <span class="icon-case"><i class="fa fa-phone"></i></span>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbPhne" ErrorMessage="*" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TbPhne" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Blood Group</p>
                                <span class="icon-case"><i class="fa fa-info"></i></span>
                                <asp:DropDownList runat="server" ID="ddlBloodGroup" class="dropdownlist">
                                    <asp:ListItem Text="---Select Blood Group---" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                                    <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                                    <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
                                    <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                                    <asp:ListItem Text="O+" Value="O+"></asp:ListItem>
                                    <asp:ListItem Text="O-" Value="O-"></asp:ListItem>
                                    <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                                    <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="rightcontact">
                            <div class="form-group">
                                <p>Photo</p>
                                <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_Load1" />
                            </div>
                            <div class="form-group">
                                <p>Designation</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:DropDownList ID="DrpRole" runat="server" class="dropdownlist">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <p>Last Name</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbEmpLname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TbEmpLname" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Reporting Manager</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:DropDownList ID="ddlReportingManager" runat="server" class="dropdownlist">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <p>Date of Birth</p>
                                <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbDOB" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TbDOB" runat="server"></asp:TextBox>
                                <cc1:CalendarExtender ID="TbDOB_CalendarExtender" runat="server" Enabled="True"
                                    TargetControlID="TbDOB">
                                </cc1:CalendarExtender>
                            </div>
                            <div class="form-group">
                                <p>Email Address</p>
                                <span class="icon-case"><i class="fa fa-envelope-open"></i></span>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbEmail" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Upload Resume</p>
                                <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:FileUpload ID="FileUpload2" runat="server" OnLoad="FileUpload1_Load1" />
                            </div>
                        </div>
                    </div>
                    <h2>Permanent Address Details</h2>
                    <div class="contentform">

                        <div class="leftcontact">
                            <div class="form-group">
                                <p>Address</p>
                                <span class="icon-case"><i class="fa fa-home"></i></span>
                                <asp:TextBox ID="TbAddress" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>State</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpState" runat="server" ToolTip="Please Select A State" class="dropdownlist" OnSelectedIndexChanged="DrpState_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="rightcontact">
                            <div class="form-group">
                                <p>Country</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpCountry" runat="server" ToolTip="Please Select A Country" class="dropdownlist" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <p>City</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpCity" runat="server" ToolTip="Please Select A City" class="dropdownlist">
                                </asp:DropDownList>
                            </div>

                        </div>

                    </div>
                    <h2>Current Address Details</h2>
                    <div class="contentform">
                        <div class="leftcontact">
                            <div class="form-group">
                                <p>Address</p>
                                <span class="icon-case"><i class="fa fa-home"></i></span>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <p>State</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpState1" runat="server" ToolTip="Please Select A State" class="dropdownlist" OnSelectedIndexChanged="DrpState1_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="rightcontact">
                            <div class="form-group">
                                <p>Country</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpCountry1" runat="server" ToolTip="Please Select A Country" class="dropdownlist" OnSelectedIndexChanged="DrpCountry1_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <p>City</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:DropDownList ID="DrpCity1" runat="server" ToolTip="Please Select A City" class="dropdownlist">
                                </asp:DropDownList>
                            </div>

                        </div>
                    </div>

                    <h2>Previous Company Reference Details</h2>
                    <div class="contentform">
                        <div class="leftcontact">
                            <div class="form-group">
                                <p>Name</p>
                                <span class="icon-case"><i class="fa fa-male"></i></span>
                                <asp:TextBox ID="txtRefName" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Designation</p>
                                <span class="icon-case"><i class="fa fa-user"></i></span>
                                <asp:DropDownList ID="ddlDesignation" runat="server" ToolTip="Please Select A Designation" class="dropdownlist">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="rightcontact">
                            <div class="form-group">
                                <p>Contact Number</p>
                                <span class="icon-case"><i class="fa fa-phone"></i></span>
                                <asp:TextBox ID="txtRefContact" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <p>Company Name</p>
                                <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                <asp:TextBox ID="txtRefCompanyName" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Save" OnClick="ImageButton1_Click" class="btn btn-success" />
    </div>
</asp:Content>
