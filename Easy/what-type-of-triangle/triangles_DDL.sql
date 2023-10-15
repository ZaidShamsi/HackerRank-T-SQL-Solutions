if not exists (select * from sys.databases where name = 'hackerrank_db')
begin
  create database hackerrank_db;
end;
go

select * from sys.databases;

if not exists (select * from sys.tables where name='triangles')
begin
	create table triangles(
	A float,
	B float,
	C float
	);
end;
go

select * from sys.tables;