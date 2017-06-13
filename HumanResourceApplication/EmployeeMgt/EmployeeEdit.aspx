<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeEdit.aspx.cs" Inherits="HumanResourceApplication.Employee_Mgt.EmployeeSearch" %>

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
                <h3><B>Employee Edit</B></h3>
            
            </div>
            <div class="hpanel">
                <div class="panel-body">

         
  
        
         <table>
                <asp:Panel ID="Panel1" runat="server" >
                    <div>
                        <div>
                            <asp:GridView ID="gridview1" runat="server" CssClass="thik5" AutoGenerateColumns="False" OnLoad="gridview1_Load" Height="91px" Width="100px">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <img src='data:image/jpg;base64,<%# Eval("Photo") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Photo")) : string.Empty %>'
                                                alt="image" height="100" width="100" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="thik5">

                        </div>
                      <br />
                          </table>
                    <div class="leftcontact">
                                		<div class="form-group">
			<p>Date of joining</p>	
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
               <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
			</div>
                        </div>
                    <div class="rightcontact">
                         <div class="form-group">
			<p>Date of Birth</p>	
			<span class="icon-case"><i class="fa fa-calendar"></i></span>
                                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                             </div>   
                               </div>
                                
                        

                       
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </div>
                </asp:Panel>



                <br />
              </form>
                <form>
              <h1>Address Details</h1>
                <br />
                <asp:Panel ID="Panel4" runat="server" >

                    <label> Permanent Address Details</label>


                    <div class="leftcontact">
                    		<div class="form-group">
			<p>Address</p>	
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
                    <asp:TextBox ID="TbAddress" runat="server" ></asp:TextBox>
			</div>

                    
                    		<div class="form-group">
			<p>State</p>	
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
  <asp:DropDownList ID="drpStatePA" runat="server" AutoPostBack="True" OnLoad="drpStatePA_Load" OnSelectedIndexChanged="drpStatePA_SelectedIndexChanged" class="dropdownlist">
                                    </asp:DropDownList>
                                </div>
                        </div>
                        <div class="rightcontact">
                    
                    		<div class="form-group">
			<p>City</p>	
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
<asp:DropDownList ID="drpCtiyPA" runat="server"  class="dropdownlist">
                                    </asp:DropDownList>
                                </div>


                    	<div class="form-group">
                                	<p>PinCode</p>	
			<span class="icon-case"><i class="fa fa-info"></i></span>
                            <asp:TextBox ID="TbPinCode" runat="server" ></asp:TextBox>
                            </div>
                            </div>

                    <hr />
                    </form>
                    <form>
                    <h1>Current Address Details</h1>
                    <div class="leftcontact">
                    		<div class="form-group">
			<p>Address</p>	
			<span class="icon-case"><i class="fa fa-home"></i></span>
                <asp:TextBox ID="TbAddressCur" runat="server" ></asp:TextBox>
			</div>

                    <div class="form-group">
			<p>State</p>	
			<span class="icon-case"><i class="fa fa-map"></i></span>
                        <asp:DropDownList ID="drpStateCA" runat="server" AutoPostBack="True" OnLoad="drpStateCA_Load" OnSelectedIndexChanged="drpStateCA_SelectedIndexChanged"  class="dropdownlist">
                                    </asp:DropDownList>
                        </div>
                        </div>
                        <div class="rightcontact">
                      <div class="form-group">
			<p>City</p>	
			<span class="icon-case"><i class="fa fa-map"></i></span>
                            <asp:DropDownList ID="drpCityCA" runat="server" class="dropdownlist" >
                                    </asp:DropDownList>
                          </div>

              
                    <div class="form-group">
			<p>PinCode</p>	
			<span class="icon-case"><i class="fa fa-info"></i></span>
                         <asp:TextBox ID="TbPinCodeCA" runat="server"></asp:TextBox>
                        </div>
</div>
                  
</form>

                </asp:Panel>
              
           

                               </div>
                </div>
            </div>
          </div>


</asp:Content>
