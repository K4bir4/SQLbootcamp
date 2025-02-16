

select * from student_details

insert into student_details
values ('Mayank','M',18,'2024-02-02',115.35),
 ('Mahesh','M',34,'2023-11-08',352.36)

 --ordinal position
 select * from INFORMATION_SCHEMA.COLUMNS 
 where TABLE_NAME like 'student_details'

 insert into student_details (Student_name,Gender)
 values('Priya','F')


--delete from student_details where Student_name ='Mahesh'