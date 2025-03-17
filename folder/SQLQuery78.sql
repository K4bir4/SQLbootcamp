

--CLUSTERED INDEX
creATE DAtabase test_index

use test_index

drop table if exists Students

create table students
(id int,
name varchar(50),
age int,
gender varchar (20)
)

insert into students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F')

select * from students 

create clustered index ix1 on students (id)

create clustered index ix2 on students (id desc)

drop index ix1 on students
drop index ix2 on students


create clustered index ix3 on students (gender desc,age asc)


drop index ix3 on students








