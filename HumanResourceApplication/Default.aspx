<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HumanResourceApplication.EmployeeDataBank" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<style>
    .nav-label:hover{
        color:#36ae36;
    }
  #ContentPlaceHolder1_gvHolidayList    {  width: 430px;
    height: 260px;
    text-align: center;}
    #ContentPlaceHolder1_Panel1 {width: 450px;
    height: 300px;}
    /*Panel tabs*/
.panel-tabs {
    position: relative;
    bottom: 30px;
    clear:both;
    border-bottom: 1px solid transparent;
}

.panel-tabs > li {
    float: left;
    margin-bottom: -1px;
}

.panel-tabs > li > a {
    margin-right: 2px;
    margin-top: 4px;
    line-height: .85;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
    color: #ffffff;
}

.panel-tabs > li > a:hover {
    border-color: transparent;
    color: #ffffff;
    background-color: transparent;
}

.panel-tabs > li.active > a,
.panel-tabs > li.active > a:hover,
.panel-tabs > li.active > a:focus {
    color: #fff;
    cursor: default;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    background-color: rgba(255,255,255, .23);
    border-bottom-color: transparent;
}
    .panel-primary > .panel-heading {
        color: #fff;
        background-color: #bfbfbf;
        border-color: #898989;
    }
    .panel-primary {
    border-color: #e6e6e6;
}
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
            <a href="default.aspx">
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
                        <li><a href="../login.aspx">Logout</a></li>
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
<div class="container">
	<div class="row">
		<div class="col-md-11 col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                    <span class="pull-right">
                        <!-- Tabs -->
                        <ul class="nav panel-tabs">
                            <li class="active"><a href="#tab1" data-toggle="tab">Leave</a></li>
                            <li><a href="#tab2" data-toggle="tab">History</a></li>
                            <li><a href="#tab3" data-toggle="tab">Calendar</a></li>
                            <li><a href="#tab4" data-toggle="tab">Attendance </a></li>
                        </ul>
                    </span>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab1">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At</div>
                        <div class="tab-pane" id="tab2">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</div>
                        <div class="tab-pane" id="tab3">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</div>
                        <div class="tab-pane" id="tab4">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

                            Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,</div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
        <div class="row">
            <div class="col-lg-12 text-center welcome-message">
                <h2>
                    Welcome to Human Resource Management System
                </h2>

                <p>
                    Special <strong>Admin Theme</strong> for medium and large web applications with very clean and
                    aesthetic style and feel.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                        Dashboard information and statistics
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 text-center">
                                <div class="small">
                                    <i class="fa fa-bolt"></i> Page views
                                </div>
                                <div>
                                    <h1 class="font-extra-bold m-t-xl m-b-xs">
                                        226,802
                                    </h1>
                                    <small>Page views in last month</small>
                                </div>
                                <div class="small m-t-xl">
                                    <i class="fa fa-clock-o"></i> Data from January
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-center small">
                                    <i class="fa fa-laptop"></i> Active users in current month (December)
                                </div>
                                <div class="flot-chart" style="height: 160px">
                                    <div class="flot-chart-content" id="flot-line-chart"></div>
                                </div>
                            </div>
                            <div class="col-md-3 text-center">
                                <div class="small">
                                    <i class="fa fa-clock-o"></i> Active duration
                                </div>
                                <div>
                                    <h1 class="font-extra-bold m-t-xl m-b-xs">
                                        10 Months
                                    </h1>
                                    <small>And four weeks</small>
                                </div>
                                <div class="small m-t-xl">
                                    <i class="fa fa-clock-o"></i> Last active in 12.10.2015
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                    <span class="pull-right">
                          You have two new messages from <a href="">Monica Bolt</a>
                    </span>
                        Last update: 21.05.2015
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <a href="EmployeeMgt/EmployeeHome.aspx"><div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <i class="pe-7s-server fa-4x"></i>

                          <br />

                        <h3 class="font-extra-bold no-margins text-success">
                           DataBank
                        </h3>
                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit vestibulum.</small>
                           <hr />
                            <div class="row">
                                <div class="col-xs-5">
                                    <small class="stat-label">Today</small>
                                    <h4>$230,00 </h4>
                                </div>
                                <div class="col-xs-7">
                                    <small class="stat-label">Last week</small>
                                    <h4>$7 980,60 <i class="fa fa-level-up text-success"></i></h4>
                                </div>
                            </div>
                    </div>
                    <div class="panel-footer">
                        This is standard panel footer
                    </div>
                </div></a>
            </div>
                   <div class="col-lg-3">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <i class="pe-7s-note2 fa-4x"></i>

                       
                           <br />
                        <h3 class="font-extra-bold no-margins text-success">
                         Attendance
                        </h3>
                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit vestibulum.</small>
                           <hr />
                            <div class="row">
                                <div class="col-xs-5">
                                    <small class="stat-label">Today</small>
                                    <h4>$230,00 </h4>
                                </div>
                                <div class="col-xs-7">
                                    <small class="stat-label">Last week</small>
                                    <h4>$7 980,60 <i class="fa fa-level-up text-success"></i></h4>
                                </div>
                            </div>
                    </div>
                    <div class="panel-footer">
                        This is standard panel footer
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <i class="pe-7s-wallet fa-4x"></i>

                       
                        <br />
                        <h3 class="font-extra-bold no-margins text-success">
                         Leave
                        </h3>
                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit vestibulum.</small>
        <hr />
                            <div class="row">
                                <div class="col-xs-5">
                                    <small class="stat-label">Today</small>
                                    <h4>$230,00 </h4>
                                </div>
                                <div class="col-xs-7">
                                    <small class="stat-label">Last week</small>
                                    <h4>$7 980,60 <i class="fa fa-level-up text-success"></i></h4>
                                </div>
                            </div>
                    </div>

                    <div class="panel-footer">
                      <table class="style1">
        <tr>
            <td class="style2">
     <nav>
        <ul>
       
        <li><asp:HyperLink ID="HyperLink1" runat="server" Height="16px" Width="186px"><B>Holiday List</B>

            </asp:HyperLink></li>
        </ul>
    </nav>
                <cc1:ModalPopupExtender ID="HyperLink1_ModalPopupExtender" runat="server"
                    BackgroundCssClass="modalBackground" CancelControlID="imgbtn"
                    Enabled="True" PopupControlID="Panel1"
                    TargetControlID="HyperLink1">
                </cc1:ModalPopupExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
               
               <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCFF" BorderStyle="Solid"
                    BorderColor="#9999FF">
                   <asp:Label ID="Label2" runat="server"
                        Font-Bold="True" ForeColor="#333300" Text="Holiday List"></asp:Label>
                    <asp:ImageButton ID="imgbtn" runat="server" Height="23px"
                        ImageUrl="~/Images/x.png" style="float:right"/>
                    <br />
                    <asp:GridView ID="gvHolidayList" runat="server" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center"
                            VerticalAlign="Top" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </asp:Panel>
            </td>
            
        </tr>
    </table>
                    </div>
                </div>
            </div>

                <div class="col-lg-3">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <i class="pe-7s-id fa-4x"></i>

                       
                        <br />
                        <h3 class="font-extra-bold no-margins text-success">
                     Recruitment
                        </h3>
                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit vestibulum.</small>
        <hr />
                            <div class="row">
                                <div class="col-xs-5">
                                    <small class="stat-label">Today</small>
                                    <h4>$230,00 </h4>
                                </div>
                                <div class="col-xs-7">
                                    <small class="stat-label">Last week</small>
                                    <h4>$7 980,60 <i class="fa fa-level-up text-success"></i></h4>
                                </div>
                            </div>
                    </div>

                    <div class="panel-footer">
                        This is standard panel footer
                    </div>
                </div>
            </div>
            
        </div>
     


</asp:Content>
