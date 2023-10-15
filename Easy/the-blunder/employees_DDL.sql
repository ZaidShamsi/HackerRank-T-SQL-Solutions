if not exists (select * from sys.databases where name = 'hackerrank_db')
begin
  create database hackerrank_db;
end;
go

select * from sys.databases;

if not exists (select * from sys.tables where name='employees')
begin
	create table employees(
	id int,
	name varchar(21),
	salary int
	);
end;
go

select * from sys.tables;