create proc SPSalaryInst(@basicsalry money,@housrentallow money,@splallow money,@eductallow money,@conveyanceallow money,
@perfrmnceallow money,@lta money,@medicalallow money,@professallw money,@providetax money,@otherdeduct money,@empid int)
as
insert dbo.SalaryTable(BasiSalry,HouseRentAllow,SpecialAllow,EducationAllow,ConveyanceAllow,PerformaceAllow,LTA,MedicalAllow,ProfesionTax,ProvidentTax,OtherDeduction,EmpID)
values(@basicsalry,@housrentallow,@splallow,@eductallow,@conveyanceallow,@perfrmnceallow,@lta,@medicalallow,@professallw,@providetax,@otherdeduct,@empid)
