

select * from dbo.Employees

select * into #3 from dbo.Employees

select * from #3 

delete from #3 
where LastName= '' or Department='0'

select * into #4 from dbo.Employees

select * from #4
delete from #4

select * from #3 

truncate table #3

drop table #3


--comment wrtitng// insert and delete should be
--written with where its good practice

-- delete