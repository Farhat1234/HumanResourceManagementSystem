<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="HumanResourceApplication.Leave_Mgt.ApplyLeave"  enableEventValidation="false"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../Styles/form.css" rel="stylesheet" />
    <style>
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
            <a href="../default.aspx">
                <img src="../images/profile.jpg" class="img-circle m-b" alt="logo">
            </a>

            <div class="stats-label text-color">
                <span class="font-extra-bold font-uppercase">Robert Razer</span>

                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <small class="text-muted">Founder of App <b class="caret"></b></small>
                    </a>
                    <ul class="dropdown-menu animated flipInX m-t-xs">
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="analytics.html">Analytics</a></li>
                        <li class="divider"></li>
                        <li><a href="login.aspx">Logout</a></li>
                    </ul>
                </div>


                <div id="sparkline1" class="small-chart m-t-sm"></div>
                <div>
                    <h4 class="font-extra-bold m-b-xs">
                        $260 104,200
                    </h4>
                    <small class="text-muted">Your income from the last year in sales product X.</small>
                </div>
            </div>
        </div>

          <ul class="nav" id="side-menu">
            <li class="active">
                <a href="../Default.aspx"> <span class="nav-label">Dashboard</span>  </a>
            </li>
          
            <li>
                <a href="#"><span class="nav-label">Personal Details</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    
                    <li><a href="../EmployeeMgt/EmployeeBankDetails.aspx"> Bank Deatils</a></li>
                    <li><a href="../EmployeeMgt/EmployeeEdit.aspx">Edit</a></li>
                    <li><a href="../EmployeeMgt/EmployeeEducation.aspx"> Education</a></li>
                    <li><a href="../EmployeeMgt/EmployeeFamilyNominations.aspx"> Nomination</a></li>
                    <li><a href="../EmployeeMgt/EmployeeITProof.aspx"> IT Proof</a></li>
                    <li><a href="../EmployeeMgt/EmployeeLoansAdvances.aspx">Loans Advances</a></li>
                    <li><a href="../EmployeeMgt/EmployeePassport.aspx"> Passport</a></li>
                    <li><a href="../EmployeeMgt/EmployeeReportingManager.aspx">Reporting Manager</a></li>
                    <li><a href="../EmployeeMgt/EmployeeSearch.aspx">Employee Search</a></li>
                    <li><a href="../EmployeeMgt/AddNewEmployee.aspx">Add New Employee</a></li>
                  
                </ul>
            </li>
            <li>
                <a href="#"><span class="nav-label">Attendance</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                   
                    <li><a href="../AttendanceMgt/ApplyAttendance.aspx">Apply Attendance</a></li>
                    <li><a href="../AttendanceMgt/ApplyOnDuty.aspx">Apply on duty</a></li>
                    <li><a href="../AttendanceMgt/ConsolidateAttandance.aspx">ConsolidateAttendance</a></li>
                    <li><a href="../AttendanceMgt/OnDutyHistory.aspx">On Duty History</a></li>
                 
                </ul>
            </li>
            <li>
                <a href="#"><span class="nav-label">Leave</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    <li><a href="ApplyLeave.aspx">Apply Leave</a></li>
                    <li><a href="ApproveLeaves.aspx"> Approve Leave</a></li>
                    <li><a href="LeaveHistory.aspx">Leave History</a></li>
                    <li><a href="LeaveQuota.aspx">Leave Quota</a></li>
                  
                </ul>
            </li>
            <li>
                <a href="#"><span class="nav-label">Recruitment</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    <li><a href="../RecruitmentMgt/PostingJob.aspx"> Job Posting </a>  </li>
                    <li><a href="../RecruitmentMgt/ListOfCareers.aspx">List Of Careers</a></li>
      
                    <li><a href="../RecruitmentMgt/EmployeeReferal.aspx">Employee Referal</a></li>
                    <li><a href="../RecruitmentMgt/IntimateHRReferal.aspx">Intimate HR Referals</a></li>
                   
                </ul>
            </li>
              <li>
                <a href="#"><span class="nav-label">SalaryManagement</span><span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    <li><a href="../SalaryMgt/Band A Payslip.aspx"> PaySlip </a>  </li>
                    <li><a href="../SalaryMgt/PrintPreview.aspx">Print Preview</a></li>
                    <li><a href="../SalaryMgt/Salary(Payslip).aspx">Salary Playslip</a></li>
                   
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
                <a href="#"> <span class="nav-label">Report</span></a>
            </li>
         

        </ul>
    </div>
</aside>

     <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3><B>Apply Leave</B></h3>
            
            </div>
            <div class="hpanel">
                <div class="panel-body">

             <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                     <form>
	   
	    
    <div class="contentform">
    	<div id="sendmessage"> Your message has been sent successfully. Thank you. </div>


    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Type Of Leave</p>
			        <span class="icon-case"><i class="fa fa-edit"></i></span>
				    <asp:DropDownList ID="drpLeaveType" runat="server" AppendDataBoundItems="true" class="dropdownlist">
                                
                            </asp:DropDownList>
                          <asp:RequiredFieldValidator InitialValue="--Select Below--" ID="Req_ID"
     runat="server"
      ControlToValidate="drpLeaveType" ForeColor="red"
       ErrorMessage="*">
 </asp:RequiredFieldValidator>
       </div> 

            	<div class="form-group">
			<p>From Date</p>
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
				 <asp:TextBox ID="TbFromDte" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbFromDte" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>
                            <cc1:CalendarExtender ID="TbFromDte_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TbFromDte">
                            </cc1:CalendarExtender>
			</div>	
		
		
			
            			<div class="form-group">
			<p>To Date </p>	
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
				<asp:TextBox ID="TbToDate" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbToDate" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>

                            <cc1:CalendarExtender ID="TbToDate_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TbToDate">
                            </cc1:CalendarExtender>
                            <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
                                    runat="server" ControlToValidate="TbFromDte" ControlToCompare="TbToDate"
                                    Operator="LessThan" Type="Date" Style="margin: 96px;" ErrorMessage="To Date must be greater than From Date"></asp:CompareValidator>

			</div>



	</div>

	<div class="rightcontact">	
     
		


        	<div class="form-group">
			<p>No Of Days</p>	
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
                    <asp:TextBox ID="TbNofDys" runat="server"  Enabled="false"></asp:TextBox>
			</div>	


			<div class="form-group">
			<p>calculate</p>
		<asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="btn btn-success"/>
			</div>

			<div class="form-group">
			<p>Note For Approver</p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
             <asp:TextBox ID="TbReson" runat="server"
                                TextMode="MultiLine"></asp:TextBox>
			</div>
		
			
	</div>
	</div>

               
<br />
        
	
</form>	
        
                    </div>
                  <asp:ImageButton ID="ImageButton1" runat="server"  onclick="ImageButton1_Click"
                  OnClientClick="javascript:return ValidateDropDown();" CssClass="btn btn-success"/>          
               <br />
            <asp:Label ID="Label10" runat="server" Text="Please plan your leaves in advance and ensure that the system is updated before you go on leave." ForeColor="Red"></asp:Label>
   </div>

       




            </div>
         </div>


    

    <script>
        function ValidateDropDown() {
            var cmbID = "<%=drpLeaveType.ClientID %>";
            if (document.getElementById(cmbID).selectedIndex == 0) {
                alert("Please select type of Leave");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
