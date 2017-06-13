<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ConsolidateAttandance.aspx.cs" Inherits="HumanResourceApplication.Attendance_Mgt.ConsolidateAttandance"  Culture="en-GB" enableEventValidation="false" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="../Styles/form.css" rel="stylesheet" />
    <style>
        .panel-body{
            height:300px;
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
                <h3><B>Consolidated Attendance</B></h3>
          
            </div>
            <div class="hpanel">
                <div class="panel-body">


                     <form>
                         <div class="leftcontact">
                             <div class="form-group">
			<p>From Date</p>
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
                  <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                     </cc1:ToolkitScriptManager>
                     <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
                     <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromDate"
                        PopupButtonID="imgPopup1" Format="dd/MM/yyyy" />

                         </div>
                             </div>
                         <div class="rightcontact">
                             <div class="form-group">
			<p>To Date</p>
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
                                  <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
                     <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate"
                        PopupButtonID="imgPopup2" Format="dd/MM/yyyy" />
                     <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
                        runat="server" ControlToValidate="txtFromDate" ControlToCompare="txtToDate"
                        Operator="LessThan" Type="Date" ErrorMessage="Start date must be less than End date."></asp:CompareValidator>

                         </div>
                             </div>
                         </form>
                   
                    <td class="auto-style6" colspan="3">
                     <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Both">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        <Columns>
                           <%--<asp:TemplateField HeaderText="From Date">
                              <ItemTemplate>
                                  <asp:Label ID="FromDate" runat="Server"
                                      Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>' />
                              </ItemTemplate>
                              </asp:TemplateField>--%>
                           <asp:BoundField HeaderText="Employee ID" DataField="EmpID"/>
                           <asp:BoundField HeaderText="Employee Name" DataField="EmpName"/>
                           <asp:TemplateField HeaderText="First Swipe">
                              <ItemTemplate>
                                 <asp:Label ID="FirstSwipe" runat="Server"
                                    Text='<%# Eval("FirstSwipe", "{0:dd/MM/yyyy}") %>' />
                              </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Last Swipe">
                              <ItemTemplate>
                                 <asp:Label ID="LastSwipe" runat="Server"
                                    Text='<%# Eval("LastSwipe", "{0:dd/MM/yyyy}") %>' />
                              </ItemTemplate>
                           </asp:TemplateField>
                           <asp:BoundField HeaderText="Total Hours" DataField="TotalHours"/>
                           <asp:BoundField HeaderText="Leave" DataField="Leave"/>
                           <asp:BoundField HeaderText="Day" DataField="Day"/>
                        </Columns>
                     </asp:GridView>
                  </td>
                              <asp:ImageButton ID="ImgSearchBtn" runat="server"  ValidationGroup="Date"  class="btn btn-success" AlternateText="Submit"/>
                    </div>
          
                </div>

           </div>
         </div>
   
</asp:Content>