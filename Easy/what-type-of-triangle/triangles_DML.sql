use hackerrank_db;

truncate table triangles;

-- ======================
-- || Inserting test data
-- ======================
insert into triangles values(1, 2, 3);
insert into triangles values(3, 4, 5);
insert into triangles values(6, 6, 6);
insert into triangles values(7, 7, 3.5);
insert into triangles values(7, 5, 13);
insert into triangles values(5, 12, 13);

select * from triangles;