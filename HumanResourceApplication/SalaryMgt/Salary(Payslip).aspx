<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Salary(Payslip).aspx.cs" Inherits="HumanResourceApplication.Salary_Mgt.Salary_Payslip_" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <link href="../Styles/form.css" rel="stylesheet" />


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
                <h3><B>Salary Calculation</B></h3>
                <small>Entry Level </small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
 <form>
	    <h1>Earnings</h1>
	    
    <div class="contentform">
    	<div id="sendmessage"> Your message has been sent successfully. Thank you. </div>


    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Domain</p>
			        <span class="icon-case"><i class="fa fa-cart-plus"></i></span>
				       <asp:DropDownList ID="DrpDomain" runat="server"  
                                ToolTip="Select the expierence" AutoPostBack="True" OnSelectedIndexChanged="DrpDomain_SelectedIndexChanged" CssClass="dropdownlist">
                                <asp:ListItem>---Select Below---</asp:ListItem>
                                <asp:ListItem>Development</asp:ListItem>
                                <asp:ListItem>Testing</asp:ListItem>
                                <asp:ListItem>Technical Support</asp:ListItem>
                            </asp:DropDownList>
       </div> 

    

			<div class="form-group">
			<p>House Rent Allowance</p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
			<asp:TextBox ID="TbHuseAllw" runat="server"  Enabled="False"></asp:TextBox>
			</div>

			<div class="form-group">
			<p>Special Allowance</p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
				  <asp:TextBox ID="TbSplAllw" runat="server" Enabled="False"></asp:TextBox>
			</div>

			  <p><b>TOTAL EARNINGS DEDUCTIONS</b></p>
             <asp:Label ID="LblEaring" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
    <div class="form-group">
			<p>  Profession Tax </p>
			<span class="icon-case"><i class="fa fa-money"></i></span>
         <asp:TextBox ID="TbProfTax" runat="server"  Enabled="False"></asp:TextBox>
        </div>
    <div class="form-group">
			<p> Provident Fund </p>
			<span class="icon-case"><i class="fa fa-money"></i></span>
           <asp:TextBox ID="TbProvdTax" runat="server"  Enabled="False"></asp:TextBox>
        </div>
       
   
         <div class="form-group">
			<p>     Other Dedcutions  </p>
			<span class="icon-case"><i class="fa fa-cut"></i></span>
              <asp:TextBox ID="TbOtherDeductions" runat="server" Enabled="False"></asp:TextBox>
             </div>

              <p><b>TOTAL DEDUCTIONS CURRENT MONTH NET SALARY</b></p>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Text="Total Deductions"></asp:Label>
      <asp:Label ID="LblDeductions" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
     <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Text="Current Month Net Salary"></asp:Label>
      <asp:Label ID="lblnetsal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
     <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:ImageButton ID="ImgBtnCalculate" runat="server" OnClick="ImgBtnCalculate_Click" class="btn btn-primary" AlternateText="calculate" Style="width: 30%;"/>

	</div>

	<div class="rightcontact">	

                <div class="form-group">
            <p>Basic Salry</p>
            <span class="icon-case"><i class="fa fa-rupee"></i></span>
				 <asp:TextBox ID="TbBscSal" runat="server"  AutoPostBack="True" Enabled="False"></asp:TextBox>
			</div>

			<div class="form-group">
			<p>Appraisal</p>	
			<span class="icon-case"><i class="fa fa-gift"></i></span>
                <asp:TextBox ID="TbAppraisal" runat="server"  AutoPostBack="True" Enabled="False"></asp:TextBox>
                            <asp:DropDownList ID="DrpAprsPerc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DrpAprsPerc_SelectedIndexChanged" CssClass="dropdownlist">
                                <asp:ListItem>---Select ---</asp:ListItem>
                                <asp:ListItem>5%</asp:ListItem>
                                <asp:ListItem>6%</asp:ListItem>
                                <asp:ListItem>8%</asp:ListItem>
                                <asp:ListItem>10%</asp:ListItem>
                                <asp:ListItem>15%</asp:ListItem>
                                <asp:ListItem>20%</asp:ListItem>
                                <asp:ListItem>25%</asp:ListItem>
                            </asp:DropDownList>
			</div>	
			<div class="form-group">
			<p>Education Allowance</p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				   <asp:TextBox ID="TbEduAllw" runat="server" Enabled="False"></asp:TextBox>
			</div>	

			<div class="form-group">
			<p> Conveyance Allowance  </p>	
			<span class="icon-case"><i class="fa fa-info"></i></span>
				 <asp:TextBox ID="TbConvyAllw" runat="server" Enabled="False"></asp:TextBox>
			</div>

			<div class="form-group">
			<p>Performance Allowance</p>
			<span class="icon-case"><i class="fa fa-user"></i></span>
                  <asp:TextBox ID="TbPerfAllw" runat="server"  Enabled="False"></asp:TextBox>
			</div>

			<div class="form-group">
			<p>LTA</p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <asp:TextBox ID="TbLTA" runat="server"  Enabled="False"></asp:TextBox>
			</div>
		
			<div class="form-group">
			<p>Medical Allowance</p>
			<span class="icon-case"><i class="fa fa-comments-o"></i></span>
                  <asp:TextBox ID="TbMedAllw" runat="server" Enabled="False"></asp:TextBox>
			</div>	
	</div>
	</div>

	
	

  


  
                               <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" class="btn btn-success" style="margin-left:430px" />
</form>




                    </div>
                </div>

            </div>
          </div>
</asp:Content>
