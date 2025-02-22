-- REcursive CTE
--factorial of a given number

with [rcte] as (
--Anchor query 
select 1 as n

union all

--Recursive Query
select n+1 from [rcte] where n<=6
)

select exp(sum(log(n))) [factorial] from [rcte]

--------------------------------------------------
--3*2*1 to find the factorial



-------------------------------------------
with [rcte] as (
--Anchor query 
select 1 as n

union all

--Recursive Query
select n+1 from [rcte] where n<=6
)

select * from [rcte]






