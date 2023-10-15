-- Declare the variables to be used
declare @total_number_of_records int;
declare @number_of_unique_city_names int;

-- Populating the varible values
select @total_number_of_records=count(*) from station;
select @number_of_unique_city_names=count(distinct city) from station;

-- Desired output
select @total_number_of_records-@number_of_unique_city_names;