# Employee Names

## Problem
Link to HackerRank Challenge: [Employee Names](https://www.hackerrank.com/challenges/name-of-employees/problem)

### Problem statement reproduced from HackerRank
Write a query that prints a list of employee names (i.e.: the name attribute) from the `Employee` table in alphabetical order.

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
employee_id	name	months	salary
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
- names should be orderd alphabatically.

#### Intermediate sql query
```sql 
select name from employee
```
|name|
|:-|
|Michael Scott|
|Dwight Schrute|
|Jim Halpert|
|Pam Beesly|
|Ryan Howard|
|Andy Bernard|

#### Desired sql query
```sql 
select name from employee order by name
```
|name|
|:-|
|Andy Bernard|
|Dwight Schrute|
|Jim Halpert|
|Michael Scott|
|Pam Beesly|
|Ryan Howard|

### Additional queries

- DDL Query to create `hackerrank_db` and `employee` table: [employee_DDL.sql](employee_DDL.sql)
- DML Query to insert data into `employee` table: [employee_DML.sql](employee_DML.sql)


