# Weather Observation Station 5

## Problem
Link to HackerRank Challenge: [Weather Observation Station 5](https://www.hackerrank.com/challenges/weather-observation-station-5/problem)

### Problem statement reproduced from HackerRank
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The STATION table is described as follows:

| Field | Type |
| :----------- | :----------- |
| id | int |
| city | varchar(21) |
| state | varchar(2) |
| lat_n | float |
| long_w | float |

where LAT_N is the northern latitude and LONG_W is the western longitude.

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
with min_city_len as
(select top 1 city, len(city) as city_name_length from station 
order by len(city) asc, city asc),
max_city_len as
(select top 1 city, len(city) as city_name_length from station 
order by len(city) desc, city asc)

select * from min_city_len
union
select * from max_city_len
```

### Additional queries

- DDL Query to create `hackerrank_db` and `station` table: [station_DDL.sql](../weather-observation-station-1/station_DDL.sql)
- DML Query to insert data into `station` table: [station_DML.sql](../weather-observation-station-1/station_DML.sql)


