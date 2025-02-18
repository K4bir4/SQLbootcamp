--unique constraint 
-- it ensures that a column consists of unique values
select * from test_not_null

--case 1: when the table already existt
alter table test_unique
add unique (lastname)


--case 2 : we need to create the table
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values(1,22,'Mayank','Mehra')

insert into test_unique values(1,24,'Rohit','Singh')

insert into test_unique values(null,34,'A','L')

insert into test_unique values(null,34,'A','Singh')

truncate table test_unique
