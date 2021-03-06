USE [HumanResource]
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployeeDetails]    Script Date: 05/28/2014 21:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[UpdateEmployeeDetails](@empid int,@bankac numeric(18,0),@pfno int,@pancard numeric(18,0),@dept nchar(50), @designation nchar(50),@categry nchar(10),@fapprover nchar(50),@sapprover nchar(30),
@rptmgr nchar(30),@weekof nchar(10),@curntshift nchar(10),@fname nchar(50),@mname nchar(50),@adharno numeric(18,0),
@drivinglc numeric(18,0),@emergenno numeric(18,0),@alternatemail nvarchar(50),@mtounge nchar(50),@maritalstatus nchar(10),
@blodgrp nvarchar(5),@nationality nchar(15),@religion nchar(15),@identmark nchar(50),@pcadd nvarchar(50),
@pccity nchar(50),@pcstate nchar(50),@pcpin numeric(18,0),@ccaddr nchar(50),@cccity nchar(50),@ccstate nchar(50),
@ccpin numeric(18,0),@passortno nvarchar(50),@pname nchar(50),@issuedate datetime,@expirydate datetime)
as
insert dbo.EmployeeEdit(EmpID,BankAC,PFno,PanNo,Dept,Designation,Category,FirstApp,SecndApp,RprtigMgr,WeekOF,CurntShif,FatherName,
MotherName,AadharNo,DrivingLCNo,EmergncyPhne,AlternateEmail,MotherTongue,MaritalStus,BlodGrp,Nationality,Religion,
IdentificationMark,PCaddr,PCcity,PCstate,PCpincode,CCaddr,
CCcity,CCstate,CCpincode,PassportNo,Name,IssueDate,ExpiryDate) values(@empid,@bankac,@pfno,@pancard,@dept,@designation,
@categry,@fapprover,@sapprover,@rptmgr,@weekof,@curntshift,@fname,@mname,@adharno,@drivinglc,@emergenno,
@alternatemail,@mtounge,@maritalstatus,@blodgrp,@nationality,@religion,@identmark,@pcadd,@pccity,@pcstate,@pcpin,
@ccaddr,@cccity,@ccstate,@ccpin,@passortno,@pname,@issuedate,@expirydate)
