# The Blunder


## Problem
Link to HackerRank Challenge: [The Blunder](https://www.hackerrank.com/challenges/the-blunder/problem)

### Problem statement reproduced from HackerRank
Samantha was tasked with calculating the average monthly salaries for all employees in the **EMPLOYEES** table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: *actual-miscalculated* average monthly salaries), and round it up to the next integer.

Input Format

The `Employees` table containing employee data for a company is described as follows:

|    Field    |    Type     |
| :---------- | :---------- |
| id | int         |
| name        | varchar(21) |
| salary      | float       |

### Understanding the solution

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `employees` is created.
- In this `employees` table, test data is inserted. Querying this table produces following output.

```sql 
select * from employees
```
| employee_id |      name      | months | salary |
| :---------- | :------------- | :----- | :----- |
| 1           | Michael Scott  | 15     | 15000  |
| 2           | Dwight Schrute | 9      | 9000   |
| 3           | Jim Halpert    | 9      | 9000   |
| 4           | Pam Beesly     | 6      | 6000   |
| 5           | Ryan Howard    | 3      | 3000   |
| 6           | Andy Bernard   | 1      | 1000   |


### Expected output
Expected output should:
- contain only `name` of the employee.
- employee names list should be orderd on their `employee_id` in ascending order.
- result set should have only those employees 
  - whose tenure is less than 10 months.
  - whose salary is greater than $2000.
  - So, `where` clause will be used to filter dataset and these two conditions can be clubbed in this `where` clause using `and` operator.

#### Intermediate sql query
```sql 
select 
*, 
'earnings_of_employees'=salary*months
from employee
```
| employee_id |      name      | months | salary | earnings_of_employees |
| :---------- | :------------- | :----- | :----- | --------------------- |
| 1           | Michael Scott  | 15     | 15000  | 225000                |
| 2           | Dwight Schrute | 9      | 9000   | 81000                 |
| 3           | Jim Halpert    | 9      | 9000   | 81000                 |
| 4           | Pam Beesly     | 6      | 6000   | 36000                 |
| 5           | Ryan Howard    | 3      | 3000   | 9000                  |
| 6           | Andy Bernard   | 1      | 1000   | 1000                  |

#### Desired sql query
```sql 
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
```
| earnings_of_employees | number_of_employees |
| :-------------------- | :------------------ |
| 225000                | 1                   |

### Additional queries

- DDL Query to create `hackerrank_db` and `employees` table: [employees_DDL.sql](employees_DDL.sql)
- DML Query to insert data into `employees` table: [employees_DML.sql](employees_DML.sql)


