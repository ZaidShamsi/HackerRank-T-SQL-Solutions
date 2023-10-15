# Weather Observation Station 1
Write a query to print the CITY and STATE for each attribute in the STATION table.

## Problem
Link to HackerRank Challenge: [Weather Observation Station 1](https://www.hackerrank.com/challenges/weather-observation-station-1/problem)

### Problem statement reproduced from HackerRank
Query a list of CITY and STATE from the STATION table.

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
select city, state from station
```

### Additional queries

- DDL Query to create `hackerrank_db` and `station` table: [station_DDL.sql](station_DDL.sql)
- DML Query to insert data into `station` table: [station_DML.sql](station_DML.sql)


