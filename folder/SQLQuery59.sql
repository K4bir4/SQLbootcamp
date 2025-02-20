--rank , dense rank , row number
--in the syntax the function needs to be written with a over()

select * from Students

--incase of tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks desc)[row num]
from Students 


--rank func if theres a tie next rank/ranks will be skipped
select *,RANK()over(order by marks desc)[Rank Func]
from Students


-->if theres a tie ranks wll not be skipped
select *, DENSE_RANK () over(order by marks desc)[desnse rank]
from Students



--incase of tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks asc)[row num]
from Students 


--rank func if theres a tie next rank/ranks will be skipped
select *,RANK()over(order by marks asc )[Rank Func]
from Students


-->if theres a tie ranks wll not be skipped
select *, DENSE_RANK () over(order by marks asc)[desnse rank]
from Students

-----------------------------

--incase of tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks )[row num]
from Students 


--rank func if theres a tie next rank/ranks will be skipped
select *,RANK()over(order by marks )[Rank Func]
from Students


-->if theres a tie ranks wll not be skipped
select *, DENSE_RANK () over(order by marks )[desnse rank]
from Students