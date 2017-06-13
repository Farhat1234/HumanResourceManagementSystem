alter PROCEDURE dbo.SPAddEmployee(@empid int, @efname nchar(50),@elname nchar(50),@cname nchar(50),@doj datetime,@dob datetime,
@gen nchar(10),@addr nvarchar(50),@city nchar(50), @state nchar(50),@phne numeric(18,0),@email nvarchar(50),@phot image,@role int)	
As
insert into dbo.AddEmployee(EmpID,EFname,ELname,Cname,DOJ,DOB,Gen,Addr,City,State,Phone,Email,Photo,RoleID)Values (@empid,@efname,@elname,@cname,@doj,@dob,
@gen,@addr,@city,@state,@phne,@email,@phot,@role)
	
	
