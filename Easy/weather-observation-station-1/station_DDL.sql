if not exists (select * from sys.databases where name = 'hackerrank_db')
begin
  create database hackerrank_db;
end;
go

select * from sys.databases;

if not exists (select * from sys.tables where name='station')
begin
	create table station(
	id int,
	city varchar(21),
	state varchar(2),
	lat_n float,
	long_w float
	);
end;
go

select * from sys.tables;