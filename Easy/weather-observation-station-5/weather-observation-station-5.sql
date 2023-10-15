with min_city_len as
(select top 1 city, len(city) as city_name_length from station 
order by len(city) asc, city asc),
max_city_len as
(select top 1 city, len(city) as city_name_length from station 
order by len(city) desc, city asc)

select * from min_city_len
union
select * from max_city_len