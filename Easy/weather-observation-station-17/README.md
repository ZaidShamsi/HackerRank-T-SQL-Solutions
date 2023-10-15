# Weather Observation Station 17

## Problem
Link to HackerRank Challenge: [Weather Observation Station 17](https://www.hackerrank.com/challenges/weather-observation-station-17/problem)

### Problem statement reproduced from HackerRank
Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

The STATION table is described as follows:

| Field  |    Type     |
| :----- | :---------- |
| id     | int         |
| city   | varchar(21) |
| state  | varchar(2)  |
| lat_n  | float       |
| long_w | float       |

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
select top 1 cast(long_w as decimal(18,4)) from station 
where lat_n > 38.7780
order by lat_n asc
```

### Additional queries

- DDL Query to create `hackerrank_db` and `station` table: [station_DDL.sql](../weather-observation-station-1/station_DDL.sql)
- DML Query to insert data into `station` table: [station_DML.sql](../weather-observation-station-1/station_DML.sql)


