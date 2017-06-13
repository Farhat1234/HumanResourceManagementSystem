create proc SPDrpEmpID(@empid int)
as
select EFname,ELname,DOJ,Gen,Addr,City,State,Email from dbo.AddEmployee where EmpID=@empid