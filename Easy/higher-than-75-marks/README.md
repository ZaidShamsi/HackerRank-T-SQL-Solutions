# Higher Than 75 Marks

## Problem
Link to HackerRank Challenge: [Higher Than 75 Marks](https://www.hackerrank.com/challenges/more-than-75-marks/problem)

### Problem statement reproduced from HackerRank
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

The STUDENTS table is described as follows:  The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

| Field | Type |
| :----------- | :----------- |
| id | int |
| name | varchar(21) |
| marks | float |

### Understanding the solution

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `students` is created.
- In this `students` table, test data is inserted. Querying this table produces following output.

```sql 
select * from students
```
|id|	name|	marks|
|:-|:-|:-|
|1|	Harry Potter|	90|
|2|	Ron Weasley|	90|
|3|	Hermione Granger|	95|
|4|	Fred Weasley|	76|
|5|	George Weasley|	77|
|6|	Draco Malfoy|	74|


### Expected output
Expected output should:
- contain only `name` of the students.
- be ordered by last 3 characters of the name.
  - So, last 3 characters are obtained by `right(name, 3)`
  - If more than one name have similare last 3 characters order these by `id`
- have only those rows `where` `marks` are greater than 75.

#### Intermediate query
Output that will be received if result set is only ordered by last 3 characters of name. Notice Fred, George, Ron are ordered by alphabatically.
```sql
select *, right(name,3) as name_last_3_char from students where marks > 75 order by right(name, 3)
```
|id|	name|	marks|  name_last_3_char|
|:-|:-|:-|:-|
|3|	Hermione Granger|	95|	ger|
|4|	Fred Weasley|	76|	ley|
|5|	George Weasley|	77|	ley|
|2|	Ron Weasley|	90|	ley|
|1|	Harry Potter|	90|	ter|
So, when order by `id` is also applied
```sql
select *, right(name,3) as name_last_3_char from students where marks > 75 order by right(name, 3), id
```
|id|	name|	marks|  name_last_3_char|
|:-|:-|:-|:-|
|3|	Hermione Granger|	95|	ger|
|2|	Ron Weasley|	90|	ley|
|4|	Fred Weasley|	76|	ley|
|5|	George Weasley|	77|	ley|
|1|	Harry Potter|	90|	ter|

#### Desired query
```sql 
select name from students where marks > 75 order by right(name, 3), id
```
|name|
|:-|
|Hermione Granger|
|Ron Weasley|
|Fred Weasley|
|George Weasley|
|Harry Potter|

### Additional queries

- DDL Query to create `hackerrank_db` and `students` table: [students_DDL.sql](students_DDL.sql)
- DML Query to insert data into `students` table: [students_DML.sql](students_DML.sql)


