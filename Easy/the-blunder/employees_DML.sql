use hackerrank_db;

truncate table employees;

-- ======================
-- || Inserting test data
-- ======================
insert into employees values(1, 'Michael Scott', 1995);
insert into employees values(2, 'Dwight Schrute', 2005);
insert into employees values(3, 'Jim Halpert', 2005);
insert into employees values(4, 'Pam Beesly', 2010);

select * from employees;