<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeePassport.aspx.cs" Inherits="HumanResourceApplication.EmployeeMgt.EmployeePassport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../Styles/form.css" rel="stylesheet" />
    <style type="text/css">
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


               <%-- <div id="sparkline1" class="small-chart m-t-sm"></div>
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
                <h3><b>Employee Identity Proof</b></h3>
                <small>Fill the form to submit the Employee Identity Proof</small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                    <form>
                        <div id="sendmessage">Your message has been sent successfully. Thank you. </div>
                        <h2>PAN Card Details</h2>
                        <div class="contentform">
                            <div class="leftcontact">
                                <div class="form-group">
                                    <p>Permananent Account Number (PAN)</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:TextBox ID="txtPAN" runat="server" placeholder="Enter Permananent Account Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="rightcontact">
                                <div class="form-group">
                                    <p>Upload PAN Card Copy</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UploadPAN" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="UploadPAN" runat="server" />
                                </div>
                            </div>
                        </div>
                        <h2>Adhaar Card Details</h2>
                        <div class="contentform">
                            <div class="leftcontact">
                                <div class="form-group">
                                    <p>Adhaar Card Number</p>
                                    <span class="icon-case"><i class="fa fa-user"></i></span>
                                    <asp:TextBox ID="txtAdhaarCardNumber" runat="server" placeholder="Enter Adhaar Card Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="rightcontact">

                                <div class="form-group">
                                    <p>Upload Adhaar Card Copy</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="UploadAdhaar" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="UploadAdhaar" runat="server" />
                                </div>
                            </div>
                        </div>
                        <h2>Driving License Details</h2>
                        <div class="contentform">
                            <div class="leftcontact">
                                <div class="form-group">
                                    <p>Driving License Number</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:TextBox ID="txtlicensenumber" runat="server" placeholder="Enter Driving License Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="rightcontact">
                                <div class="form-group">
                                    <p>Upload Driving License Copy</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="UploadDrivingLicense" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="UploadDrivingLicense" runat="server" />
                                </div>
                            </div>
                        </div>
                        <h2>Election Card Details</h2>
                        <div class="contentform">
                            <div class="leftcontact">
                                <div class="form-group">
                                    <p>Election Card Number</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:TextBox ID="txtElectionCardNumber" runat="server" placeholder="Enter Election Card Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="rightcontact">
                                <div class="form-group">
                                    <p>Upload Election Card Copy</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UploadElectionCard" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="UploadElectionCard" runat="server" />
                                </div>
                            </div>
                        </div>
                        <h2>Passport Details</h2>
                        <div class="contentform">
                            <div class="leftcontact">
                                <div class="form-group">
                                    <p>Passport Number</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:TextBox ID="txtPassportNumber" runat="server" placeholder="Enter Passport Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPassportNumber" ErrorMessage="*" ForeColor="Red" />
                                </div>
                                <div class="form-group">
                                    <p>Name as per Passport</p>
                                    <span class="icon-case"><i class="fa fa-user"></i></span>
                                    <asp:TextBox ID="txtPassportName" runat="server" placeholder="Enter Name as per Passport"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassportName" ErrorMessage="*" ForeColor="Red" />
                                </div>
                                <div class="form-group">
                                    <p>Passport Issuing Country</p>
                                    <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                    <asp:DropDownList ID="DrpCountry" runat="server" ToolTip="Please Select A Country" class="dropdownlist">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <p>Date of Birth</p>
                                    <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                    <asp:TextBox ID="txtDOB" runat="server" placeholder="Select Date Of Birth"></asp:TextBox>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
                                    <cc1:CalendarExtender ID="TbDOJ_CalendarExtender" runat="server" Enabled="True"
                                    TargetControlID="txtDOB">
                                </cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDOB" ErrorMessage="*" ForeColor="Red" />
                                </div>
                                <div class="form-group">
                                    <p>Issue Date</p>
                                    <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                    <asp:TextBox ID="txtIssuedate" runat="server" placeholder="Select Issue Date"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True"
                                    TargetControlID="txtIssuedate">
                                </cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtIssuedate" ErrorMessage="*" ForeColor="Red" />
                                </div>
                            </div>
                            <div class="rightcontact">
                                <div class="form-group">
                                    <p>Upload Passport Copy</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="UploadPassport" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="UploadPassport" runat="server" />
                                </div>
                                <div class="form-group">
                                    <p>Nationality</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:DropDownList ID="ddlNationality" runat="server" ToolTip="Please Select A Nationality" class="dropdownlist">
                                    </asp:DropDownList>
                                </div>
                                <%--<div class="form-group">
                                    <p>Passport Type</p>
                                    <span class="icon-case"><i class="fa fa-info"></i></span>
                                    <asp:DropDownList ID="ddlPassportType" runat="server" ToolTip="Please Select A Passport Type" class="dropdownlist">
                                        <asp:ListItem Text="---Select Passport Type---" Value="0" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Regular" Value="Regular"></asp:ListItem>
                                        <asp:ListItem Text="Diplomatic" Value="Diplomatic"></asp:ListItem>
                                        <asp:ListItem Text="Official" Value="Official"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>--%>
                                <div class="form-group">
                                    <p>Place of Issue</p>
                                    <span class="icon-case"><i class="fa fa-location-arrow"></i></span>
                                    <asp:TextBox ID="txtPOI" runat="server" placeholder="Select Place Of Issue"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPOI" ErrorMessage="*" ForeColor="Red" />
                                </div>
                                <div class="form-group">
                                    <p>Place of Birth</p>
                                    <span class="icon-case"><i class="fa fa-location-arrow"></i></span>
                                    <asp:TextBox ID="txtPOB" runat="server" placeholder="Select Place Of Birth"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender3" runat="server" Enabled="True"
                                    TargetControlID="txtPOB">
                                </cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPOB" ErrorMessage="*" ForeColor="Red" />
                                </div>
                                <div class="form-group">
                                    <p>Expiry Date</p>
                                    <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                    <asp:TextBox ID="txtExprdate" runat="server" placeholder="Select Expiry Date"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender4" runat="server" Enabled="True"
                                    TargetControlID="txtExprdate">
                                </cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtExprdate" ErrorMessage="*" ForeColor="Red" />
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="btnSubmit" runat="server" Text="Save" class="btn btn-success" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-success" Style="background-color: #81BDA4; margin: -7% 67%; text-align: center" />
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
