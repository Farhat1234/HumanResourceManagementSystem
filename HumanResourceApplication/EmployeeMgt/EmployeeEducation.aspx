<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeEducation.aspx.cs" Inherits="HumanResourceApplication.EmployeeMgt.EmployeeEducation" Culture="en-GB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/form.css" rel="stylesheet" />


    <style>
        input[type="checkbox"] {
            width: 14%;
            height: 38px;
            margin: 0px;
        }

        input[type="radio"] {
            width: 100% !important;
            height: 18px;
            float: none;
            margin: 12px 27px -20px 36px;
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
                <h3><b>Employee Education </b></h3>
                <small>Fill the form to submit the Employee Education Details </small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                    <form>

                        <div class="contentform">
                            <div id="sendmessage">Your message has been sent successfully. Thank you. </div>


                            <div class="leftcontact">

                                <div class="form-group">
                                    <p>Educational Qualification</p>
                                    <span class="icon-case"><i class="fa fa-comment"></i></span>
                                    <asp:DropDownList ID="ddlEducation" runat="server" ToolTip="Please Select Your Education" class="dropdownlist" OnSelectedIndexChanged="ddlEducation_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Selected="True" Value="0" Text="--Select Your Education--"></asp:ListItem>
                                        <asp:ListItem Text="No Formal Education" Value="No Formal Education"></asp:ListItem>
                                        <asp:ListItem Text="Primary Education" Value="Primary Education"></asp:ListItem>
                                        <asp:ListItem Text="Secondary Education" Value="Secondary Education"></asp:ListItem>
                                        <asp:ListItem Text="Diploma" Value="Diploma"></asp:ListItem>
                                        <asp:ListItem Text="Vocational" Value="Vocational"></asp:ListItem>
                                        <asp:ListItem Text="Graduation" Value="Graduation"></asp:ListItem>
                                        <asp:ListItem Text="Post Graduation" Value="Post Graduation"></asp:ListItem>
                                        <asp:ListItem Text="Doctorate" Value="Doctorate"></asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlEducation" InitialValue="0" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <p>Start Date</p>
                                    <span class="icon-case"><i class="fa fa-calendar"></i></span>
                                    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                    </cc1:ToolkitScriptManager>
                                    <asp:TextBox ID="txtFromDate" runat="server" placeholder="Select Start Date"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromDate"
                                        PopupButtonID="imgPopup1" Format="dd/MM/yyyy" />
                                    <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
                                        runat="server" ControlToValidate="txtFromDate" ControlToCompare="txtToDate"
                                        Operator="LessThan" Type="Date"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <p>Name of The Institution</p>
                                    <span class="icon-case"><i class="fa fa-home"></i></span>
                                    <asp:TextBox ID="txtNameOfInstitute" runat="server" placeholder="Enter Name Of The Institution"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <p>Country</p>
                                    <span class="icon-case"><i class="fa fa-map-marker"></i></span>
                                    <asp:DropDownList ID="DrpCountry" runat="server" class="dropdownlist" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged" AutoPostBack="true">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <p>City</p>
                                    <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                    <asp:DropDownList ID="DrpCity" runat="server" ToolTip="Please Select A City" class="dropdownlist">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <p>Upload Certificate</p>
                                    <span class="icon-case"><i class="fa fa-book"></i></span>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                            </div>

                            <div class="rightcontact">
                                <div class="form-group">
                                    <p>Branch of Study</p>
                                    <span class="icon-case"><i class="fa fa-building"></i></span>
                                    <asp:DropDownList ID="drpBranchOfStudy" runat="server" class="dropdownlist">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <p>End Date</p>
                                    <span class="icon-case"><i class="fa fa-calendar "></i></span>
                                    <asp:TextBox ID="txtToDate" runat="server" placeholder="Select End Date"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate"
                                        PopupButtonID="imgPopup1" Format="dd/MM/yyyy" />

                                    <asp:CompareValidator ID="CompareValidator2" ValidationGroup="Date" ForeColor="Red"
                                        runat="server" ControlToValidate="txtToDate" ControlToCompare="txtFromDate"
                                        Operator="GreaterThan" Type="Date" Style="margin: 76px;" ErrorMessage="End date must be greater than Start date."></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <p>Grade/Percentage</p>
                                    <span class="icon-case"><i class="fa fa-comments-o"></i></span>
                                    <asp:TextBox ID="txtGrade" runat="server" placeholder="Enter Grade/Percentage"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <p>State</p>
                                    <span class="icon-case"><i class="fa fa-building-o"></i></span>
                                    <asp:DropDownList ID="DrpState" runat="server" ToolTip="Please Select A State" class="dropdownlist" OnSelectedIndexChanged="DrpState_SelectedIndexChanged" AutoPostBack="True">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <p>Course Type</p>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rbtntype" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="rbtntype" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="Full Time" Value="Full Time"></asp:ListItem>
                                        <asp:ListItem Text="Part Time" Value="Part Time"></asp:ListItem>
                                        <asp:ListItem Text="Correspondance" Value="Correspondance"></asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*" ForeColor="red" ClientValidationFunction="ValidateCheckBox"></asp:CustomValidator>
                <asp:CheckBox ID="chkTick" runat="server" Text="Below furnished information is as per my knowledge and for any misuse arising out of it, I will be held responsible" />
                <script type="text/javascript">
                    function ValidateCheckBox(sender, args) {
                        if (document.getElementById("<%=chkTick.ClientID %>").checked == true) {
                            args.IsValid = true;
                        } else {
                            args.IsValid = false;
                        }
                    }
                </script>

                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-success" Style="background-color: #81BDA4; margin: -7% 67%; text-align: center" />
                
            </div>
        </div>
    </div>

</asp:Content>
