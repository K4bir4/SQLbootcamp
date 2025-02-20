select * from Students

select *,ROW_NUMBER() over(partition by subject order by marks desc)[ROW NUM DESC]
from Students

select *, ROW_NUMBER() over(partition by subject order by marks)[ROW NUM ASC]
from Students

select *, ROW_NUMBER() over(partition by student_name order by marks desc)[ROW NUM DESC]
from Students

select *,
rank() over(partition by student_name order by marks desc)[RANK DESC]
from Students

select *,
rank() over(partition by subject order by marks desc)[RANK DESC]
from Students


select *,
dense_rank() over(partition by subject order by marks desc)[DENSE RANK DESC]
from Students

select *,
dense_rank() over(partition by student_name order by marks desc)[DENSE RANK DESC]
from Students

select *,
dense_rank() over(partition by subject order by marks asc)[DENSE RANK ASC]
from Students




