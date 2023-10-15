select 
cast(sum(lat_n) as decimal(18,2)) as sum_lat_n, 
cast(sum(long_w) as decimal(18,2)) as sum_long_w
from station