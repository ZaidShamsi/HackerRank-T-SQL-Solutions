# Weather Observation Station 4

## Problem
Link to HackerRank Challenge: [Weather Observation Station 4](https://www.hackerrank.com/challenges/weather-observation-station-4/problem)

### Problem statement reproduced from HackerRank
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

The STATION table is described as follows:

| Field | Type |
| :----------- | :----------- |
| id | int |
| city | varchar(21) |
| state | varchar(2) |
| lat_n | float |
| long_w | float |

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because .
total number of records - number of unique city names = 3-2 = 1

### Understanding the solution

- For illustration purpose, a database named `hackerrank_db` is created.
- In this `hackerrank_db`, a table named `station` is created.
- In this `station` table, test data is inserted. Querying this table produces following output.

```sql 
select * from station
```

### Expected output
Expected output should contain:
- `city` and `state` columns only.

```sql 
-- Declare the variables to be used
declare @total_number_of_records int;
declare @number_of_unique_city_names int;

-- Populating the varible values
select @total_number_of_records=count(*) from station;
select @number_of_unique_city_names=count(distinct city) from station;

-- Desired output
select @total_number_of_records-@number_of_unique_city_names;
```

### Additional queries

- DDL Query to create `hackerrank_db` and `station` table: [station_DDL.sql](../weather-observation-station-1/station_DDL.sql)
- DML Query to insert data into `station` table: [station_DML.sql](../weather-observation-station-1/station_DML.sql)


