create database constraints
use constraints

--CONSTRAINTS
-- conditions that can be applied on the columns of a table & these conditions are to be followed
--while inserting into the records

--Not Null constraints
--case 1 : we will have to create new table
create table test_not_null (
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'test_not_null'

insert into test_not_null values (1,23,'Mayank')

insert into test_not_null values (null,23,'Mayank')

insert into test_not_null values (2,null,'RAJ')




--case 2 : table already exist

--we want to make 1st name column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values (1,23,null)

alter table test_not_null
alter column age tinyint not null
-- if a column already consist of NULL column you cannot modify the constraint on the age column