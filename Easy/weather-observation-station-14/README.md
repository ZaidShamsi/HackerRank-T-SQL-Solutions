# Weather Observation Station 14

## Problem
Link to HackerRank Challenge: [Weather Observation Station 14](https://www.hackerrank.com/challenges/weather-observation-station-14/problem)

### Problem statement reproduced from HackerRank
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

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
select top 1 cast(lat_n as decimal(18,4)) from station 
where lat_n < 137.2345
order by lat_n desc
```

### Additional queries

- DDL Query to create `hackerrank_db` and `station` table: [station_DDL.sql](../weather-observation-station-1/station_DDL.sql)
- DML Query to insert data into `station` table: [station_DML.sql](../weather-observation-station-1/station_DML.sql)


