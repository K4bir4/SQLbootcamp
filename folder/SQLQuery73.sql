

select * from Employees


create procedure sp_test  
as
begin
	SELECT * from Employees
end


-- firstly create the stored procedure then call it

sp_test

exec sp_test

execute sp_test
---------------------------------------------
--using create proc

--example 2]

create proc sp_test_1
as
begin
	select firstname,lastname from Employees
end


sp_test_1
---------------------------------------------------------------------

--changes to the stored procedure

alter proc sp_test_1
as
begin
	select employeeid,firstname,lastname from Employees
end

sp_test_1












