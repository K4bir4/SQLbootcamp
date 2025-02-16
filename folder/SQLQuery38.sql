-------------------

select * from student_details

insert into student_details (Age,event_date)
values (34,'2025-10-04'),(54,'2019-01-01'),(19,'2022-08-08')

--data type of column age is tiny int 

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'student_details'

insert into student_details (Age)
values(256)
--ERROR  [Arithmetic overflow error for data type tinyint, value = 256.]

