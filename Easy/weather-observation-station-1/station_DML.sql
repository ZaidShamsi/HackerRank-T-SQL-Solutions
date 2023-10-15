use hackerrank_db;

truncate table station;

-- ======================
-- || Inserting test data
-- ======================
insert into station values(0, 'inception_city_zero', 'S1', 0, 0);
insert into station values(1, 'old_city_one', 'S1', 10.1, 7.1);
insert into station values(2, 'old_city_two', 'S1', 20.1, 14.1);
insert into station values(3, 'city_three', 'S1', 30.1, 21.1);
insert into station values(4, 'old_city_four', 'S1', 40.1, 28.1);
insert into station values(5, 'city_five', 'S1', 50.1, 35.1);
insert into station values(6, 'city_six', 'S2', 60.1, 42.1);
insert into station values(7, 'city_seven', 'S2', 70.1, 49.1);
insert into station values(8, 'city_eight', 'S2', 80.1, 56.1);
insert into station values(9, 'city_nine', 'S2', 90.1, 63.1);
insert into station values(10, 'city_ten', 'S2', 100.1, 70.1);
insert into station values(11, 'city_one', 'S3', 110.1, 77.1);
insert into station values(12, 'city_three', 'S3', 120.1, 84.1);
insert into station values(13, 'city_seven', 'S3', 130.1, 91.1);
insert into station values(14, 'city_nine', 'S3', 140.1, 98.1);
insert into station values(15, 'new_city_one', 'S1', 15.1, 10.6);
insert into station values(16, 'new_city_two', 'S1', 25.1, 17.6);
insert into station values(17, 'new_city_four', 'S1', 45.1, 31.6);

select * from station;