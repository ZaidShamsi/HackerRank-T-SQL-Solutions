# Employee Salaries

## Problem
Link to HackerRank Challenge: [Employee Salaries](https://www.hackerrank.com/challenges/salary-of-employees/problem)

### Problem statement reproduced from HackerRank
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

Input Format

The `Employee` table containing employee data for a company is described as follows:

| Field | Type |
| :----------- | :----------- |
| employee_id | int |
| name | varchar(21) |
| months | float |
| salary | float |

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

### Understanding the solution

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `employee` is created.
- In this `employee` table, test data is inserted. Querying this table produces following output.

```sql 
select * from employee
```
|employee_id|	name|	months|	salary|
|:-|:-|:-|:-|
|1|	Michael Scott|	15|	15000|
|2|	Dwight Schrute|	9|	9000|
|3|	Jim Halpert|	9|	9000|
|4|	Pam Beesly|	6|	6000|
|5|	Ryan Howard|	3|	3000|
|6|	Andy Bernard|	1|	1000|


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
select * from employee where salary > 2000 and months < 10
```
|employee_id|	name|	months|	salary|
|:-|:-|:-|:-|
|2|	Dwight Schrute|	9|	9000|
|3|	Jim Halpert|	9|	9000|
|4|	Pam Beesly|	6|	6000|
|5|	Ryan Howard|	3|	3000|

#### Desired sql query
```sql 
select name from employee where salary > 2000 and months < 10 order by employee_id
```
|name|
|:-|
|Dwight Schrute|
|Jim Halpert|
|Pam Beesly|
|Ryan Howard|

### Additional queries

- DDL Query to create `hackerrank_db` and `employee` table: [employee_DDL.sql](../name-of-employees/employee_DDL.sql)
- DML Query to insert data into `employee` table: [employee_DML.sql](../name-of-employees/employee_DML.sql)


