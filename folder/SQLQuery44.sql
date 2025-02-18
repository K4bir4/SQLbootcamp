

-- CHECK constraint
-- checks for certain conditions that can be applied on the columns-
-- of the table if this condtions fail we will not be able to-
--insert records in the table

--case 1: table doesnt exist
create table test_check(
EID int,
firstname varchar(256),
age tinyint check (age >=10))

select * from test_check

insert into test_check values(1,'KK','20')

insert into test_check values(2,'RR',9)


update test_check set EID =11 where EID =1
--case 2: table exist

alter table test_check
add check (EID>5)

insert into test_check values(3,'RR',9)
insert into test_check values(6,'MI',99)
insert into test_check values(7,'RR',44)
