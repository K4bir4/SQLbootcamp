
select * from customers


-- is null
select isnull(null,'1 st value null')

select ISNULL('abx',null)

select ISNULL(null,null)

select coalesce('A','B','C')

select coalesce(null,'B','C')

select coalesce(null,null,'C')


select customerid,email,phonenumber from customers

select customerid,isnull(email,'Email NA'), isnull(phonenumber,'ph no na') from customers


select customerid, coalesce(email,phonenumber,'contact NA')[coalesce func] from customers












