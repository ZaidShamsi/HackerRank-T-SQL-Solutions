select top 1 cast(long_w as decimal(18,4)) from station 
where lat_n > 38.7780
order by lat_n asc