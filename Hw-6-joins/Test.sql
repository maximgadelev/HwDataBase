create table airport(
		id              serial primary key,
		name varchar(30) not null,
	    city varchar(30) not null
);

create table airplane(
		id              serial primary key,
		model varchar(30) not null
);

create table passengers(
	id              serial primary key,
	name varchar(30) not null,
	surname varchar(30) not null,
	patronymic varchar(30) not null
);

create table flights(
	id              serial primary key,
	time_minutes  int  not null,
	day int not null check (day<=31 and day>0),
	month int not null check (month>0 and month<=12),
	year int not null check (year>1980 and year<=2021),
	hour int not null check (hour>=0 and hour<=23),
	minute int not null check (minute>=0 and minute<=59),
	id_airport  int not null,
	id_airplane  int not null,
	foreign key (id_airport) references airport (id),
	foreign key (id_airplane) references airplane (id)
);

create table crew(
	id              serial primary key,
	name varchar(30) not null,
	surname varchar(30) not null,
	patronymic varchar(30) not null,
	position varchar(15) check (position ~*'[pilot|stewardess|technicians]')
);

create table flights_crew(
	id_flights int not null,
	id_crew  int not null,
	foreign key (id_flights) references flights (id),
	foreign key (id_crew) references crew (id)
);

create table flights_passengers(
	id_flights int not null,
	id_passengers  int not null,
	foreign key (id_flights) references flights (id),
	foreign key (id_passengers) references passengers (id)
);


--2

insert into airport (name, city) values ('Уфа', 'Уфа');
insert into airport (name, city) values ('Внуково', 'Москва');
insert into airport (name, city) values ('Домодедово', 'Москва');
insert into airport (name, city) values ('Курумоч', 'Москва');

insert into airplane (model) values ('Боинг');
insert into airplane (model) values ('Боинг-123');
insert into airplane (model) values ('Airbus-123');

insert into passengers (name, surname, patronymic) values ('Алина', 'Миннибаева', 'Рафаэлевна');
insert into passengers (name, surname, patronymic) values ('Калугин', 'Артем', 'Андреевич');
insert into passengers (name, surname, patronymic) values ('Анастасия', 'Войтенко', 'Олеговна');

insert into crew (name, surname, patronymic, position) values ('Пилот', 'Пилотов', 'Пилотович', 'pilot');
insert into crew (name, surname, patronymic, position) values ('Да', 'Даов', 'Даович', 'pilot');
insert into crew (name, surname, patronymic, position) values ('Раз', 'ДВА', 'Три', 'stewardess');
insert into crew (name, surname, patronymic, position) values ('Илья', 'Ильин', 'Ильич', 'technicians');


insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (53, 23, 6, 2021, 5, 20, 4, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (12, 21, 06, 2021, 12, 30, 3, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (450, 19, 06, 2021, 7, 12, 1, 3);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (13, 09, 06, 2021, 16, 32, 1, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (456, 07, 06, 2021, 8, 13, 2, 1);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (123, 05, 06, 2021, 15, 32, 3, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (123, 10, 06, 2021, 23, 45, 4, 3);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (543, 25, 06, 2021, 1,  14, 4, 1);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (342, 15, 06, 2021, 5, 45,  2, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (543, 09, 06, 2021, 20, 00,  4, 3);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (54, 23, 06, 2021,13 , 20,  1, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (31, 21, 06, 2021, 13, 50,  3, 2);
insert into flights (time_minutes, day, month, year, hour, minute, id_airport, id_airplane) values (45, 19, 06, 2021, 21, 28,  4, 3);


insert into flights_crew (id_flights , id_crew ) values ( 1, 1);
insert into flights_crew (id_flights , id_crew ) values ( 1, 3);
insert into flights_crew (id_flights , id_crew ) values ( 2, 2);
insert into flights_crew (id_flights , id_crew ) values ( 2, 3);
insert into flights_crew (id_flights , id_crew ) values ( 3, 1);
insert into flights_crew (id_flights , id_crew ) values ( 3, 3);
insert into flights_crew (id_flights , id_crew ) values ( 4, 2);
insert into flights_crew (id_flights , id_crew ) values ( 5, 1);
insert into flights_crew (id_flights , id_crew ) values ( 5, 3);
insert into flights_crew (id_flights , id_crew ) values ( 5, 4);
insert into flights_crew (id_flights , id_crew ) values ( 6, 2);
insert into flights_crew (id_flights , id_crew ) values ( 6, 3);
insert into flights_crew (id_flights , id_crew ) values ( 7, 1);
insert into flights_crew (id_flights , id_crew ) values ( 7, 3);
insert into flights_crew (id_flights , id_crew ) values ( 8, 2);
insert into flights_crew (id_flights , id_crew ) values ( 8, 3);
insert into flights_crew (id_flights , id_crew ) values ( 9, 1);
insert into flights_crew (id_flights , id_crew ) values ( 9, 3);
insert into flights_crew (id_flights , id_crew ) values ( 9, 4);
insert into flights_crew (id_flights , id_crew ) values ( 10, 2);
insert into flights_crew (id_flights , id_crew ) values ( 10, 3);
insert into flights_crew (id_flights , id_crew ) values ( 10, 4);

insert into flights_passengers (id_flights, id_passengers) values ( 1, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 1, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 1, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 2, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 2, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 2, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 3, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 3, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 4, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 5, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 5, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 6, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 6, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 6, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 7, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 7, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 8, 3);
insert into flights_passengers (id_flights, id_passengers) values ( 9, 2);
insert into flights_passengers (id_flights, id_passengers) values ( 10, 1);
insert into flights_passengers (id_flights, id_passengers) values ( 10, 3);

--3

select * from flights where time_minutes = (select max(time_minutes) from flights);

--4

SELECT flights.id_airport, flights.day, flights.month, flights.year, count(flights.id_airport)
FROM flights GROUP BY flights.id_airport, flights.day, flights.month, flights.year;

--5

select * from  (
select * from (select id_passengers, sum(time_minutes) as
minutes from (select * from (select * from flights_passengers left join
passengers  on  flights_passengers.id_passengers = passengers.id) as all_pass left join
flights on all_pass.id_flights = flights.id) as all_pass_fligh group by id_passengers) as aa left join
passengers on aa.id_passengers = passengers.id
)

as sum_time

where sum_time.minutes =
(
select max(minutes) from (select sum(time_minutes) as
minutes from (select * from (select * from flights_passengers left join
passengers  on  flights_passengers.id_passengers = passengers.id) as all_pass left join
flights on all_pass.id_flights = flights.id) as all_pass_fligh group by id_passengers) as max_time
)

or

sum_time.minutes =
(
select min(minutes) from (select sum(time_minutes) as
minutes from (select * from (select * from flights_passengers left join
passengers  on  flights_passengers.id_passengers = passengers.id) as all_pass left join
flights on all_pass.id_flights = flights.id) as all_pass_fligh group by id_passengers) as min_time
)
;

--6

WITH recursive flight_cte (TO_TOWN2, PILOT_ID)
 AS
 (SELECT  FROM_TOWN,  PILOT_ID
 FROM (select airport.city as FROM_TOWN, flights_crew as PILOT_ID from (select * from (select * from flights_crew  left join
 crew on flights_crew.id_crew  = crew.id) as crew_flights left join
flights on flights.id = crew_flights.id_flights) as flights_crew left join
airport on airport.id = flights_crew.id_airport  where flights_crew.position
 = 'pilot' order by id_crew, year, month, day, hour, minute) as flights1
 UNION ALL SELECT
flight_cte.TO_TOWN2 || ', ' || FTPI.FROM_TOWN
 FROM (SELECT  FROM_TOWN,  PILOT_ID
  FROM (select airport.city as FROM_TOWN, flights_crew as PILOT_ID from (select * from (select * from flights_crew  left join
      crew on flights_crew.id_crew  = crew.id) as crew_flights left join
      flights on flights.id = crew_flights.id_flights) as flights_crew left join
      airport on airport.id = flights_crew.id_airport  where flights_crew.position
      = 'pilot' order by id_crew, year, month, day, hour, minute) as flights1) as FTPI
 INNER JOIN flight_cte
 ON flight_cte.TO_TOWN2 = FTPI.FROM_TOWN)
SELECT * FROM flight_cte;
