alter proc SPJobPostins(@jobdomin nchar(50),@jobtitle nchar(50),@email nvarchar(50),@skill nchar(50),@expiernce nvarchar(50),
@qualif nvarchar(50),@compaynae nchar(30),@nofemp int,@empid int)
as 
insert JobPosting(JobDomain,JobTitle,Email,Skills,Expierence,Qualification,CompanyNme,NofEmployees,EmpID)values 
(@jobdomin,@jobtitle,@email,@skill,@expiernce,@qualif,@compaynae,@nofemp,@empid)