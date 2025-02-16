

select * from customers

select * from orders

--order placed in august month
select * from customers
where customer_id in(
select distinct customer_id from orders where order_date between '2024-08-01' and '2024-08-31')


select * from customers
where customer_id in (
select distinct customer_id from orders where order_date not between '2024-08-01' and '2024-08-31')                      


select * from Employees
--fetch the data from employee table
--where salart>average salare

select * from Employees
where salary >(
select avg(salary) from employees
)

select avg(salary) from employees
