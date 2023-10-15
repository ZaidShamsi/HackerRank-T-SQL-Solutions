select 
city.name,
country.code, country.name
from city
inner join country 
on city.countrycode = country.code
where continent = 'Africa'