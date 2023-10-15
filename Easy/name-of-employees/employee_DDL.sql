if not exists (select * from sys.databases where name = 'hackerrank_db')
begin
  create database hackerrank_db;
end;
go

select * from sys.databases;

if not exists (select * from sys.tables where name='employee')
begin
	create table employee(
	employee_id int,
	name varchar(21),
	months float,
	salary float
	);
end;
go

select * from sys.tables;