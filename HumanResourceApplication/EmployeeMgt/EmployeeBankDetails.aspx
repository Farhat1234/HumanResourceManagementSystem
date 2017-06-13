<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeBankDetails.aspx.cs" Inherits="HumanResourceApplication.EmployeeMgt.EmployeeBankDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../Styles/form.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
            <a href="index.html">
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
                <h3><B>Employee Bank Details</B></h3>
                <small>Fill the form to submit the Employee Bank Details </small>
            </div>
            <div class="hpanel">
                <div class="panel-body">


    <table style="width: 100%;">
        <tr>
            <td class="auto-style5">
                <asp:Literal ID="Literal1" runat="server" Text="Bank Details" Visible="false"></asp:Literal>
            </td>
        </tr>
        <tr>
            <asp:GridView runat="server" ID="grdBankDetails" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Both" Visible="false">
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
                    <asp:BoundField DataField="SavingsAccountType" HeaderText="Savings Account Type" />
                    <asp:BoundField DataField="SavingsAccountNo" HeaderText="Account Number" />
                    <asp:BoundField DataField="SavingsBankName" HeaderText="Bank Name" />
                    <asp:BoundField DataField="SavingsCountry" HeaderText="Country" />
                    <asp:BoundField DataField="SavingsIFSC" HeaderText="IFSC Code" />
                    <asp:BoundField DataField="ReimburseAccountType" HeaderText="Reimburse Account Type" />
                    <asp:BoundField DataField="ReimburseAccountNo" HeaderText="Account Number" />
                    <asp:BoundField DataField="ReimburseBankName" HeaderText="Bank Name" />
                    <asp:BoundField DataField="ReimburseCountry" HeaderText="Country" />
                    <asp:BoundField DataField="ReimburseIFSC" HeaderText="IFSC Code" />
                </Columns>
            </asp:GridView>
        </tr>
       </table>
                  

    <asp:Panel ID="pnlForm" runat="server">
           <form>
	 
                        
         <div class="contentform">
             	<div class="leftcontact">
                     <h1>Savings Bank Account</h1>
                     <br />
			      <div class="form-group">
			        <p>Account Type</p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
                        <asp:TextBox ID="txtAccType" runat="server" Text="Savings Account" Enabled="false" ></asp:TextBox>
			 
       </div> 

            <div class="form-group">
            <p>Bank Name </p>
            <span class="icon-case"><i class="fa fa-building-o"></i></span>
                 <asp:TextBox ID="txtBankName" runat="server" placeholder="Enter Bank Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBankName" ErrorMessage="*" ForeColor="Red" />

			</div>
			<div class="form-group">
			<p>Country</p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				 <asp:DropDownList ID="DrpCountry" runat="server"  ToolTip="Please Select A Country" class="dropdownlist" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>

			</div>
                      <div class="form-group">
			<p>State</p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				 <asp:DropDownList ID="DrpState" runat="server"  ToolTip="Please Select A State" class="dropdownlist" OnSelectedIndexChanged="DrpState_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
			</div>
                     <div class="form-group">
            <p>City</p>
            <span class="icon-case"><i class="fa fa-building-o"></i></span>
				<asp:DropDownList ID="DrpCity" runat="server"  ToolTip="Please Select A City" class="dropdownlist">
                             
                            </asp:DropDownList>
			</div>
                     <div class="form-group">
            <p>Branch</p>
            <span class="icon-case"><i class="fa fa-info"></i></span>
				 <asp:TextBox ID="txtSBranch" runat="server" placeholder="Enter the Branch"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSBranch" ErrorMessage="*" ForeColor="Red" />
			</div>
			<div class="form-group">
			<p>IFSC Code </p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
				 <asp:TextBox ID="txtSIFSC" runat="server" placeholder="Enter the IFSC Code"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSIFSC" ErrorMessage="*" ForeColor="Red" />
			</div>
                     <div class="form-group">
			<p>Account Number</p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                   <asp:TextBox ID="txtAccNo" runat="server" placeholder="Enter the Account Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAccNo" ErrorMessage="*" ForeColor="Red" />
        
			</div>	

			



	</div>

	<div class="rightcontact">	
     <h1> Reimbursement Account</h1>
        <br />
			      <div class="form-group">
			        <p>Account Type</p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
                       <asp:TextBox ID="txtRAccType" runat="server" Text="Reimbursement Account" Enabled="false" placeholder="Enter the Account Type" ></asp:TextBox>
			
                <div class="validation"></div>
                    </div> 

            <div class="form-group">
            <p>Bank Name </p>
            <span class="icon-case"><i class="fa fa-building-o"></i></span>
                 <asp:TextBox ID="txtRBankName" runat="server" placeholder="Enter Bank Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRBankName" ErrorMessage="*" ForeColor="Red" />
	
			</div>

			

			<div class="form-group">
			<p>Country</p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				 <asp:DropDownList ID="DrpCountry1" runat="server"  ToolTip="Please Select A Country" class="dropdownlist" OnSelectedIndexChanged="DrpCountry1_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>

			</div>
         <div class="form-group">
			<p>State</p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				 <asp:DropDownList ID="DrpState1" runat="server"  ToolTip="Please Select A State" class="dropdownlist" OnSelectedIndexChanged="DrpState1_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
			</div>
        <div class="form-group">
            <p>City</p>
            <span class="icon-case"><i class="fa fa-building-o"></i></span>
				<asp:DropDownList ID="DrpCity1" runat="server"  ToolTip="Please Select A City" class="dropdownlist">
                             
                            </asp:DropDownList>
			</div>
        <div class="form-group">
            <p>Branch</p>
            <span class="icon-case"><i class="fa fa-info"></i></span>
				 <asp:TextBox ID="txtRBranch" runat="server" placeholder="Enter the Branch"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRBranch" ErrorMessage="*" ForeColor="Red" />
			</div>
			<div class="form-group">
			<p>IFSC Code </p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
				 <asp:TextBox ID="txtRIFSC" runat="server" placeholder="Enter the IFSC Code"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRIFSC" ErrorMessage="*" ForeColor="Red" />
			</div>

			<div class="form-group">
			<p>Account Number</p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                 <asp:TextBox ID="txtRAccNo" runat="server" placeholder="Enter the Account Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRAccNo" ErrorMessage="*" ForeColor="Red" />
      
			</div>	



	</div>

	</div>
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-success" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="False" />
  

	
</form>	
    	



     
                </asp:Panel>

        </div>
                </div>
            </div>
        </div>
    

</asp:Content>
