

--PRIMARY KEY CONSTRAINT

--case 1 : when new table is to be created
create table test_pk_1(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

select * from test_pk_1

insert into test_pk_1 values(1,'M',23,'Kartk')

insert into test_pk_1 values(1,'F',19,'priya')
--violation of Primary Key

insert into test_pk_1 values(null,'M',33,'asd')

truncate table test_pk_1

--case 2 : when table already 

alter table test_pk_1 
add primary key (age)

create table test_pk_2(
SID int not null unique,
firstname varchar(256),
age tinyint not null)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)





drop table test_pk_2