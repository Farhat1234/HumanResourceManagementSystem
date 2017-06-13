alter proc SPSearchEmployee(@empid int)
as
select EmpID,EFname,Cname,DOJ,City,State,Email from AddEmployee where EmpID=@empid

SPSearchEmployee 5415