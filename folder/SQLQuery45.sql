-- DEFAULT CONSTRAINT
--used to provide default values to colums
-- inplace of null default values will be used


--case 1 : the table does not exist
create table test_default (
EID int default 5,
firstname varchar(256) default 'Kabir',
lastname varchar (256),
age tinyint
)

select * from test_default

insert into test_default values (1,'RR','YBJ',23)

insert into test_default (lastname) values ('kk')

-- case 2 : the table exist

alter table test_default
add default 25 for age

insert into test_default(lastname) values ('kk')