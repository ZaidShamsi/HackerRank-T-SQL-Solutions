use hackerrank_db;

truncate table employee;

-- ======================
-- || Inserting test data
-- ======================
insert into employee values(1, 'Michael Scott', 15, 15000);
insert into employee values(2, 'Dwight Schrute', 9, 9000);
insert into employee values(3, 'Jim Halpert', 9, 9000);
insert into employee values(4, 'Pam Beesly', 6, 6000);
insert into employee values(5, 'Ryan Howard', 3, 3000);
insert into employee values(6, 'Andy Bernard', 1, 1000);

select * from employee;