USE [HumanResource]
GO
/****** Object:  StoredProcedure [dbo].[SPDailyAttendance]    Script Date: 06/13/2014 10:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SPDailyAttendance](@empid int,@empname nchar(10),@department nchar(50),@month nchar(10),
@year bigint,@date datetime,@intime datetime,@outtime datetime,@punching char(10))
as 
insert dbo.DailyAtten(EmpID,EmpName,Department,Month,Year,Date,INtime,OUTtime,Punching)values(@empid,@empname,@department,@month,
@year,@date,@intime,@outtime,@punching)
