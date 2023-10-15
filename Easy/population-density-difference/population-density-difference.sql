declare @min_population int;
declare @max_population int;

select @min_population=min(population) from city;
select @max_population=max(population) from city;

select @max_population - @min_population
