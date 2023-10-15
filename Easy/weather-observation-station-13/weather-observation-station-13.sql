with filtered_result_set as
(
select * from station 
where lat_n > 38.7880
and lat_n < 137.2345
)
select 
cast(sum(lat_n) as decimal(18,4)) as sum_lat_n
from filtered_result_set