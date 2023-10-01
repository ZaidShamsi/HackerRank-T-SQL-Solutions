use hackerrank_db;

truncate table city;

-- ======================
-- || Inserting test data
-- ======================
insert into city values(1, 'city_1', 'IND', 'IND_district_1', 100000);
insert into city values(2, 'city_2', 'IND', 'IND_district_1', 110000);
insert into city values(3, 'city_3', 'IND', 'IND_district_2', 120000);
insert into city values(4, 'city_4', 'IND', 'IND_district_3', 130000);
insert into city values(5, 'city_5', 'IND', 'IND_district_4', 140000);
insert into city values(6, 'city_6', 'USA', 'USA_district_1', 100000);
insert into city values(7, 'city_7', 'USA', 'USA_district_1', 110000);
insert into city values(8, 'city_8', 'USA', 'USA_district_2', 120000);
insert into city values(9, 'city_9', 'USA', 'USA_district_3', 130000);
insert into city values(10, 'city_10', 'USA', 'USA_district_4', 140000);
insert into city values(11, 'city_11', 'JPN', 'JPN_district_1', 100000);
insert into city values(12, 'city_12', 'JPN', 'JPN_district_1', 110000);
insert into city values(13, 'city_13', 'JPN', 'JPN_district_2', 120000);
insert into city values(14, 'city_14', 'JPN', 'JPN_district_3', 130000);
insert into city values(1661, 'city_1661', 'JPN', 'JPN_district_4', 140000);

select * from city;