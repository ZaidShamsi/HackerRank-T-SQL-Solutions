if not exists (select * from sys.databases where name = 'hackerrank_db')
begin
  create database hackerrank_db;
end;
go

use hackerrank_db;

if not exists (select * from sys.tables where name='city')
begin
	create table city(
	id int,
	name varchar(17),
	countrycode varchar(3),
	district varchar(20),
	population int
	);
end;
go

select * from sys.tables;