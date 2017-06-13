create proc SPEmpID(@empid int)
AS
SELECT EFname,ELname,DOJ,Gen,Addr,City,State,Email FROM AddEmployee where EmpID=@empid
