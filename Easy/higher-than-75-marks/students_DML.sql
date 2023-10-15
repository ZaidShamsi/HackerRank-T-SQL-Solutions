use hackerrank_db;

truncate table students;

-- ======================
-- || Inserting test data
-- ======================
insert into students values(1, 'Harry Potter', 90);
insert into students values(2, 'Ron Weasley', 90);
insert into students values(3, 'Hermione Granger', 95);
insert into students values(4, 'Fred Weasley', 76);
insert into students values(5, 'George Weasley', 77);
insert into students values(6, 'Draco Malfoy', 74);

select * from students;