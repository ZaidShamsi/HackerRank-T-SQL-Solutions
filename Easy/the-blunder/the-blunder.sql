declare @actual_average_salary float;
declare @miscalculated_average_salary float;

select @actual_average_salary=avg(cast(salary as float)) from employees;
select @miscalculated_average_salary=avg(cast(replace(cast(salary as varchar(4)), '0', '') as float)) from employees;

select cast(ceiling(@actual_average_salary-@miscalculated_average_salary) as int) as amount_of_error;
