# African Cities

Query the data for all American cities with populations larger than 100,000.

## Problem
Link to HackerRank Challenge: [African Cities](https://www.hackerrank.com/challenges/african-cities/problem)

### Problem statement reproduced from HackerRank
Given the **CITY** and **COUNTRY** tables, query the names of all cities where the CONTINENT is 'Africa'.

**Note**: CITY.CountryCode and COUNTRY.Code are matching key columns.

The CITY and COUNTRY tables are described as follows:

|    Field    |    Type     |
| :---------- | :---------- |
| id          | int         |
| name        | varchar(17) |
| countrycode | varchar(3)  |
| district    | varchar(20) |
| population  | int         |

### Understanding the solution

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `city` is created.
- In this `city` table, test data is inserted. Querying this table produces following output.

```sql 
select * from city
```

id|name|countrycode|district|population
:---|:---|:---|:---|:---
1|city_1|IND|IND_district_1|100000
2|city_2|IND|IND_district_1|110000
3|city_3|IND|IND_district_2|120000
4|city_4|IND|IND_district_3|130000
5|city_5|IND|IND_district_4|140000
6|city_6|USA|USA_district_1|100000
7|city_7|USA|USA_district_1|110000
8|city_8|USA|USA_district_2|120000
9|city_9|USA|USA_district_3|130000
10|city_10|USA|USA_district_4|140000
11|city_11|JPN|JPN_district_1|100000
12|city_12|JPN|JPN_district_1|110000
13|city_13|JPN|JPN_district_2|120000
14|city_14|JPN|JPN_district_3|130000
1661|city_1661|JPN|JPN_district_4|140000

### Expected output
Expected output should contain:
- only USA data: So, query should include `where` clause on `countrycode` column to filter out other countries data
- only cities with populations larger than 100000: So, `where` clause should also be applied on `population` column. Both of these conditions can be combined using `and` operator.
- So, modified query is

```sql 
select round(avg(population),0) as avg_population from city
```
id|name|countrycode|district|population
:---|:---|:---|:---|:---
7|city_7|USA|USA_district_1|110000
8|city_8|USA|USA_district_2|120000
9|city_9|USA|USA_district_3|130000
10|city_10|USA|USA_district_4|140000

### Additional queries

- DDL Query to create `hackerrank_db` and `city` table: [hackerrank_DDL.sql](../revising-the-select-query/hackerrank_DDL.sql)
- DML Query to insert data into `city` table: [city_DML.sql](../revising-the-select-query/city_DML.sql)


