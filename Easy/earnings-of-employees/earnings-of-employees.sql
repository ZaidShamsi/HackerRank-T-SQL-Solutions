with earnings as
(
select 
*, 
'earnings_of_employees'=salary*months
from employee
)
select top 1 
earnings_of_employees, 
'number_of_employees'=count(*) 
from earnings
group by earnings_of_employees
order by earnings_of_employees desc;