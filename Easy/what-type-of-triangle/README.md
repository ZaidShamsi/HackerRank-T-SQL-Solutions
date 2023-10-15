# Type of Triangle

## Problem
Link to HackerRank Challenge: [Type of Triangle](https://www.hackerrank.com/challenges/what-type-of-triangle/problem)

### Problem statement reproduced from HackerRank
Write a query identifying the type of each record in the **TRIANGLES** table using its three side lengths. Output one of the following statements for each record in the table:

**Equilateral**: It's a triangle with  sides of equal length.
**Isosceles**: It's a triangle with  sides of equal length.
**Scalene**: It's a triangle with  sides of differing lengths.
**Not A Triangle**: The given values of A, B, and C don't form a triangle.

Input Format

The **TRIANGLES** table is described as follows:

| Field | Type |
| :----------- | :----------- |
| A | float |
| B | float |
| C | float |

Each row in the table denotes the lengths of each of a triangle's three sides.

### Understanding the solution

#### Important reads
- [Triangle inequality (Wikipedia)](https://en.wikipedia.org/wiki/Triangle_inequality). It states, it is a trianlge if
  - a+b>c and
  - b+c>a and
  - c+a>b
- [Types of triangle (Wikipedia)](https://en.wikipedia.org/wiki/Triangle#Types_of_triangle)

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `triangles` is created.
- In this `triangles` table, test data is inserted. Querying this table produces following output.

```sql 
select * from triangles
```
|A|	B|	C|
|:-|:-|:-|
|1|	2|	3|
|3|	4|	5|
|6|	6|	6|
|7|	7|	3.5|
|7|	5|	13|
|5|	12|	13|


### Expected output
Expected result set should:
- describe the type of triangle.

#### Intermediate sql query
```sql 
select *, 
iif(a+b>c,'yes','no') as a_plus_b_greater_than_c, 
iif(b+c>a,'yes','no') as b_plus_c_greater_than_a, 
iif(c+a>b,'yes','no') as c_plus_a_greater_than_b, 
'triangle_type'=case 
					when a+b<=c or b+c<=a or c+a<=b then 'Not A Triangle'
					when a=b and b=c then 'Equilateral'
					when a=b or b=c or c=a then 'Isosceles'
					else 'Scalene'
				end
from triangles
```
|  A   |  B   |  C   | a_plus_b_greater_than_c | b_plus_c_greater_than_a | c_plus_a_greater_than_b | triangle_type  |
| :--- | :--- | :--- | :---------------------- | :---------------------- | :---------------------- | :------------- |
| 1    | 2    | 3    | no                      | yes                     | yes                     | Not A Triangle |
| 3    | 4    | 5    | yes                     | yes                     | yes                     | Scalene        |
| 6    | 6    | 6    | yes                     | yes                     | yes                     | Equilateral    |
| 7    | 7    | 3.5  | yes                     | yes                     | yes                     | Isosceles      |
| 7    | 5    | 13   | no                      | yes                     | yes                     | Not A Triangle |
| 5    | 12   | 13   | yes                     | yes                     | yes                     | Scalene        |

#### Desired sql query
```sql 
select
'triangle_type'=case 
					when a+b<=c or b+c<=a or c+a<=b then 'Not A Triangle'
					when a=b and b=c then 'Equilateral'
					when a=b or b=c or c=a then 'Isosceles'
					else 'Scalene'
				end
from triangles
```
|triangle_type|
|:-|
|Not A Triangle|
|Scalene|
|Equilateral|
|Isosceles|
|Not A Triangle|
|Scalene|

### Additional queries

- DDL Query to create `hackerrank_db` and `triangles` table: [triangles_DDL.sql](triangles_DDL.sql)
- DML Query to insert data into `triangles` table: [triangles_DML.sql](triangles_DML.sql)


