
--FOREIGN KEY CONSTRAINT

-- case  1 table is created
create table test_pk (
ID int primary key,
name varchar (256)
)

insert into test_pk values (1,'Mayank'),(2,'Raj'),(3,'jay')
select * from test_pk

create table test_fk(
ID int foreign key references test_pk(id),
course varchar(256)
)

insert into test_fk values (1,'A')

select * from test_fk

insert into test_fk values (null,'B')--fk can consist null value

insert into test_fk values (5,'C')--value is not there so error by reference

-- case 2 table already exist

create table test_fk2(ID int, course varchar (256))

alter table test_fk2
add foreign key (id) references test_pk (id)