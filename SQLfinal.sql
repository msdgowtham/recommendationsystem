create database test;
use test;

create table users(
id int primary key auto_increment, 
username varchar(30) not null, 
email varchar(50) not null unique, 
password varchar(50) not null,
Action	int,Adventure int,	Animation int, Comedy int,Drama int,Fantasy int,
Horror int,Romance int,Sci_Fi	int,Thriller int)engine=InnoDB default charset=latin1 ;

alter table users auto_increment=1;

create table movies(ID int primary key,	poster_url	varchar(200),Movie varchar(100),
unknown int,Action	int,Adventure int,	Animation int,
Children int, Comedy int,Crime int,Documentary int,Drama int,Fantasy int,
Film_Noir int,Horror int,Musical int,Mystery int,Romance int,Sci_Fi	int,Thriller int,War int,Western int);

create table ratings(userID int ,movieId int,rating NUMERIC(2, 1),
primary key(userID,movieId), foreign key (userID) references users(id), foreign key(movieId) references movies(ID)
)engine=InnoDB default charset=latin1;

create table recommend(user_id int,movie_id int,
primary key(user_id,movie_id), foreign key (user_id) references users(id), foreign key(movie_id) references movies(ID)
);
INSERT INTO movies VALUES
    (1,'https://images-na.ssl-images-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@..jpg','Toy Story (1995)',0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (2,'https://images-na.ssl-images-amazon.com/images/M/MV5BMzk2OTg4MTk1NF5BMl5BanBnXkFtZTcwNjExNTgzNA@@..jpg','GoldenEye (1995)',0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),
    (3,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDc3Y2YwMjUtYzlkMi00MTljLTg1ZGMtYzUwODljZTI1OTZjXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Four Rooms (1995)',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),
    (4,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAwODYzNDY4Ml5BMl5BanBnXkFtZTcwODkwNTgzNA@@..jpg','Get Shorty (1995)',0,1,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (5,'https://images-na.ssl-images-amazon.com/images/M/MV5BYWUwNDk2ZDYtNmFkMi00NjE5LWE1M2ItYTRkNTFjZDU3ZDU4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTYxNjkxOQ@@..jpg','Copycat (1995)',0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,0),
    (7,'https://images-na.ssl-images-amazon.com/images/M/MV5BN2Y2OWU4MWMtNmIyMy00YzMyLWI0Y2ItMTcyZDc3MTdmZDU4XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Twelve Monkeys (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0),
    (8,'https://images-na.ssl-images-amazon.com/images/M/MV5BYjg4ZjUzMzMtYzlmYi00YTcwLTlkOWUtYWFmY2RhNjliODQzXkEyXkFqcGdeQXVyNTUyMzE4Mzg@..jpg','Babe (1995)',0,0,0,0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (9,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM3NzA1MjM2N15BMl5BanBnXkFtZTcwMzY3MTMzNA@@..jpg','Dead Man Walking (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (10,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI3MzMwMzIxMF5BMl5BanBnXkFtZTYwNTM0Nzc5..jpg','Richard III (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0),
    (11,'https://images-na.ssl-images-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Seven (Se7en) (1995)',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0),
    (12,'https://images-na.ssl-images-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Usual Suspects, The (1995)',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0),
    (13,'https://images-na.ssl-images-amazon.com/images/M/MV5BMGM1NzM2ZjktNDM5ZS00YmExLTk5ZmYtNDdkNjdkNTdhZWZkXkEyXkFqcGdeQXVyNjE5MjUyOTM@..jpg','Mighty Aphrodite (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (14,'https://images-na.ssl-images-amazon.com/images/M/MV5BYWZmNjkzOGItNmI4ZS00MDQ1LThhMzQtOTI3MThjOTI4Njg2XkEyXkFqcGdeQXVyMDUyOTUyNQ@@..jpg','Postino, Il (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0),
    (15,'https://images-na.ssl-images-amazon.com/images/M/MV5BZDZhNDRlZjAtYzdhNy00ZjU1LWFlMDYtNjA5NjliM2Y5ZmVjL2ltYWdlXkEyXkFqcGdeQXVyNjE5MjUyOTM@..jpg','Mr. Holland''s Opus (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (16,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyNzIyMjI1MV5BMl5BanBnXkFtZTgwMjkyMzUzMzE@..jpg','French Twist (Gazon maudit) (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (17,'https://images-na.ssl-images-amazon.com/images/M/MV5BZjk3YmZhMDAtOWUzMS00YjE5LTkxNzAtY2I1NGZjMDA2ZTk0XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','From Dusk Till Dawn (1996)',0,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,0),
    (18,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTE5ODk5MDAwN15BMl5BanBnXkFtZTYwNDA3MjE5..jpg','White Balloon, The (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (19,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTgwNjkwOTQ5NV5BMl5BanBnXkFtZTcwNjc3ODAyMQ@@..jpg','Antonia''s Line (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (20,'https://images-na.ssl-images-amazon.com/images/M/MV5BOTgwMTExNjk2M15BMl5BanBnXkFtZTcwNzQxNTEzMQ@@..jpg','Angels and Insects (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0),
    (21,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTlmNzhiMWEtOWVjZC00NmM0LTgxNDItMDJmYTkxYTZkY2FjXkEyXkFqcGdeQXVyNTUyMzE4Mzg@..jpg','Muppet Treasure Island (1996)',0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,0),
    (22,'https://images-na.ssl-images-amazon.com/images/M/MV5BODg4NzA0MTktOGU5ZS00ODlkLWE3ZmQtYjAzNjNmM2E3NmEzL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Braveheart (1995)',0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0),
    (23,'https://images-na.ssl-images-amazon.com/images/M/MV5BNGQxNDgzZWQtZTNjNi00M2RkLWExZmEtNmE1NjEyZDEwMzA5XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Taxi Driver (1976)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (24,'https://images-na.ssl-images-amazon.com/images/M/MV5BZTUxMzY1N2YtZjM5NC00MmUzLThkNzEtYjNiYzg0MzI4MDc5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@..jpg','Rumble in the Bronx (1995)',0,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),
    (25,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2NjExODYyOF5BMl5BanBnXkFtZTcwNTc0NjgyNA@@..jpg','Birdcage, The (1996)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (26,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTFkZmQ5OWEtNjFmMC00ZTI2LWE0ZWUtN2VhOWE1MzdiOGJhXkEyXkFqcGdeQXVyMTQ4NDY5OTc@..jpg','Brothers McMullen, The (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (27,'https://images-na.ssl-images-amazon.com/images/M/MV5BMGE1ZTQ0ZTEtZTEwZS00NWE0LTlmMDUtMTE1ZWJiZTYzZTQ2XkEyXkFqcGdeQXVyNTAyODkwOQ@@..jpg','Bad Boys (1995)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (28,'https://images-na.ssl-images-amazon.com/images/M/MV5BNjEzYjJmNzgtNDkwNy00MTQ4LTlmMWMtNzA4YjE2NjI0ZDg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Apollo 13 (1995)',0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (29,'https://images-na.ssl-images-amazon.com/images/M/MV5BNWY3M2I0YzItNzA1ZS00MzE3LThlYTEtMTg2YjNiOTYzODQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Batman Forever (1995)',0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0),
    (30,'https://images-na.ssl-images-amazon.com/images/M/MV5BZjNkNGJjYWEtM2IyNi00ZjM5LWFlYjYtYjQ4NTU5MGFlMTI2XkEyXkFqcGdeQXVyMTMxMTY0OTQ@..jpg','Belle de jour (1967)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (31,'https://images-na.ssl-images-amazon.com/images/M/MV5BMmFkY2IxNTAtMWRiNS00MWU2LWI1NDYtY2YxYTQyYTk5OTBhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Crimson Tide (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0),
    (32,'https://images-na.ssl-images-amazon.com/images/M/MV5BNThmZGJiYzctOTdhNS00ODhiLTg4NzctNDc1ZDRmOGU1MTJmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@..jpg','Crumb (1994)',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
    (33,'https://images-na.ssl-images-amazon.com/images/M/MV5BYjA0NDMyYTgtMDgxOC00NGE0LWJkOTQtNDRjMjEzZmU0ZTQ3XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Desperado (1995)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0),
    (34,'https://images-na.ssl-images-amazon.com/images/M/MV5BYjEwZDUyODktOGVmOC00ZjIyLTlmM2YtZDZjY2Y2ZWE4ZjMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Doom Generation, The (1995)',0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (35,'https://images-na.ssl-images-amazon.com/images/M/MV5BZWY3OWY3MjUtN2E3NS00M2RkLWI5MWUtMmI4MjQ0MjFmZjM2XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Free Willy 2: The Adventure Home (1995)',0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (36,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDE0NTQ1NjQzM15BMl5BanBnXkFtZTYwNDI4MDU5..jpg','Mad Love (1995)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0),
    (37,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk2NTE5MDI4MV5BMl5BanBnXkFtZTcwODM4MDMzMQ@@..jpg','Nadja (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (38,'https://images-na.ssl-images-amazon.com/images/M/MV5BYWU1YjQ3NTUtZjZkZi00ZDc5LTgyZTgtNzkxMTIzNzUwZGY0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Net, The (1995)',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0),
    (39,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQ2NTQ0NzgtODUzYy00NThlLWFhNDEtNjhkY2M0M2EwY2ZmXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Strange Days (1995)',0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0),
    (40,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyNzgxNTk0OF5BMl5BanBnXkFtZTcwOTAzNjgyMQ@@..jpg','To Wong Foo, Thanks for Everything! Julie Newmar (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (41,'https://images-na.ssl-images-amazon.com/images/M/MV5BMzcyMjZmNjctNGNhMS00ZmQxLWFkNzQtYTIxYjVkYmU1NmNmXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Billy Madison (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (42,'https://images-na.ssl-images-amazon.com/images/M/MV5BNzE1Njk0NmItNDhlMC00ZmFlLWI4ZTUtYTY4ZjgzNjkyMTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Clerks (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (43,'https://images-na.ssl-images-amazon.com/images/M/MV5BYzhkNjE2YTQtYWQzNS00ZTkwLTg4YzAtNjNlYTRlMGEzYjcxL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Disclosure (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (44,'https://images-na.ssl-images-amazon.com/images/M/MV5BNzhkNjFlNDQtMDYxNy00NGU5LWE4YmItOWIyYzg5MTNmNzcxXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Dolores Claiborne (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (45,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg5NTQxMjc5MV5BMl5BanBnXkFtZTcwMjYxODcxMQ@@..jpg','Eat Drink Man Woman (1994)',0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (46,'https://images-na.ssl-images-amazon.com/images/M/MV5BMGIxN2NiMDYtYjQ0YS00M2ViLTkzYTUtNDdhYWZmOTM0ZmJkXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Exotica (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (47,'https://images-na.ssl-images-amazon.com/images/M/MV5BNTA5ZjdjNWUtZGUwNy00N2RhLWJiZmItYzFhYjU1NmYxNjY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Ed Wood (1994)',0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (48,'https://images-na.ssl-images-amazon.com/images/M/MV5BNjQ1MDA0YWMtMDliZC00N2ZhLWIwZDItNjhjNTMzYTMwMWU4L2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Hoop Dreams (1994)',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
    (49,'https://images-na.ssl-images-amazon.com/images/M/MV5BN2VkMzZlMTctZjVlOS00NmQ1LTg1ZDItMDc5NzhlNDRhMjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','I.Q. (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (50,'https://images-na.ssl-images-amazon.com/images/M/MV5BZmJmMTM5YzItOTU2OS00ZGUwLWI3MzgtMmYwMWY2YmFlM2Q1XkEyXkFqcGdeQXVyNjg3MDM4Mzc@..jpg','Star Wars (1977)',0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0),
    (51,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMjYxNTAyN15BMl5BanBnXkFtZTgwMTc3MjkyMTE@..jpg','Legends of the Fall (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1),
    (52,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjExMzk0ODQyNV5BMl5BanBnXkFtZTcwODk0ODE1NA@@..jpg','Madness of King George, The (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (53,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2NTU2Nzc0MV5BMl5BanBnXkFtZTcwMzY1OTM2MQ@@..jpg','Natural Born Killers (1994)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),
    (54,'https://images-na.ssl-images-amazon.com/images/M/MV5BZTg1Mzk1NjAtNGFlOS00NzdlLWI0NTgtYzlmNTUzZGQ0NjYzXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Outbreak (1995)',0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (55,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY0NzkwMTk0OF5BMl5BanBnXkFtZTcwMjYxMTI1MQ@@..jpg','Professional, The (1994)',0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,1,0,0),
    (56,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@..jpg','Pulp Fiction (1994)',0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0),
    (57,'https://images-na.ssl-images-amazon.com/images/M/MV5BYzAyYzQ0ODQtNzNhMi00NWVkLTk1YTItODE4Y2U4YmE0NDgzXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Priest (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (58,'https://images-na.ssl-images-amazon.com/images/M/MV5BNTYxNjdjMzUtYzAyNC00NWJhLWFlM2EtNWM4NDBhZmQ1YjJiXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Quiz Show (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (59,'https://images-na.ssl-images-amazon.com/images/M/MV5BYTg1MmNiMjItMmY4Yy00ZDQ3LThjMzYtZGQ0ZTQzNTdkMGQ1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Three Colors: Red (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (60,'https://images-na.ssl-images-amazon.com/images/M/MV5BZGJhNDdmMWMtNzZiYy00MmFiLThjNmUtYTE1ZjRkNjdjYmQ5XkEyXkFqcGdeQXVyMTMxODk2OTU@..jpg','Three Colors: Blue (1993)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (61,'https://images-na.ssl-images-amazon.com/images/M/MV5BNTliYTI1YTctMTE0Mi00NDM0LThjZDgtYmY3NGNiODBjZjAwXkEyXkFqcGdeQXVyMTAwMzUyOTc@..jpg','Three Colors: White (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (62,'https://images-na.ssl-images-amazon.com/images/M/MV5BYWEyYTQzNzQtZTg5OS00NDhkLTg1NjYtMzA5Y2MyYjYzNWQ5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@..jpg','Stargate (1994)',0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),
    (63,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM3MzQ3ODE1OV5BMl5BanBnXkFtZTcwNDU4NjI5MQ@@..jpg','Santa Clause, The (1994)',0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (64,'https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@..jpg','Shawshank Redemption, The (1994)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (65,'https://images-na.ssl-images-amazon.com/images/M/MV5BY2EyZDlhNjItODYzNi00Mzc3LWJjOWUtMTViODU5MTExZWMyL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','What''s Eating Gilbert Grape (1993)',0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (66,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5NjU4NDUzMl5BMl5BanBnXkFtZTgwMjc4NDgzMTE@..jpg','While You Were Sleeping (1995)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (67,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAzNTI0ODUxOF5BMl5BanBnXkFtZTgwNTQxNzQxMTE@..jpg','Ace Ventura: Pet Detective (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (68,'https://images-na.ssl-images-amazon.com/images/M/MV5BZmJmMTM5YzItOTU2OS00ZGUwLWI3MzgtMmYwMWY2YmFlM2Q1XkEyXkFqcGdeQXVyNjg3MDM4Mzc@..jpg','Crow, The (1994)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0),
    (69,'https://images-na.ssl-images-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Forrest Gump (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0),
    (70,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMyNzg2NzgxNV5BMl5BanBnXkFtZTcwMTcxNzczNA@@..jpg','Four Weddings and a Funeral (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (71,'https://images-na.ssl-images-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@..jpg','Lion King, The (1994)',0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0),
    (72,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@..jpg','Mask, The (1994)',0,0,0,0,0,1,1,0,0,1,0,0,0,0,0,0,0,0,0),
    (73,'https://images-na.ssl-images-amazon.com/images/M/MV5BY2I1OTY2NmUtMGVlZi00NjNmLThkNTgtMjExMzRhOTM2MDJiXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Maverick (1994)',0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
    (74,'https://images-na.ssl-images-amazon.com/images/M/MV5BN2MzYjIxMjktNmMwOS00M2U0LThiYjktOTg5MTM3OTFjYWQ0XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@..jpg','Faster Pussycat! Kill! Kill! (1965)',0,1,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (75,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDA2MTYyNDE4NV5BMl5BanBnXkFtZTcwOTY5ODA3NA@@..jpg','Brother Minister: The Assassination of Malcolm X (1994)',0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
    (76,'https://images-na.ssl-images-amazon.com/images/M/MV5BZmQ1ZDc0MDAtNjVmYi00MDkxLWE5MDItZmJmNjcxZGEyMWRjXkEyXkFqcGdeQXVyNjUwNzk3NDc@..jpg','Carlito''s Way (1993)',0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0),
    (77,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxMjM5NDYwM15BMl5BanBnXkFtZTgwODkzMzk5MDE@..jpg','Firm, The (1993)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (78,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjZmZjM1NWEtYTllYy00NmIyLWEzN2EtZmQ5Yjk1ODAyZmE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Free Willy (1993)',0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (79,'https://images-na.ssl-images-amazon.com/images/M/MV5BYmFmOGZjYTItYjY1ZS00OWRiLTk0NDgtMjQ5MzBkYWE2YWE0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Fugitive, The (1993)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),
    (80,'https://images-na.ssl-images-amazon.com/images/M/MV5BZjU2ODlmZWMtODEwZS00NTQ0LTk1ZDYtYzk0ZjE3ZGZhMGM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Hot Shots! Part Deux (1993)',0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0),
    (81,'https://images-na.ssl-images-amazon.com/images/M/MV5BYjg5ZDE3NTUtMjQ2Ni00MzgwLWI3ZjMtYTY3NDI0YjFjNjgyXkEyXkFqcGdeQXVyMTM2Mzg4MA@@..jpg','Hudsucker Proxy, The (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (82,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@..jpg','Jurassic Park (1993)',0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),
    (83,'https://images-na.ssl-images-amazon.com/images/M/MV5BY2Q3YTU4OTgtZTc0My00YmY1LWJmOTQtMmMwNGE2ZjBmNmIxXkEyXkFqcGdeQXVyMTAwMzUyOTc@..jpg','Much Ado About Nothing (1993)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (84,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDcyMGRmMTMtZDhiYy00YmM4LTkwNDQtM2FlOGViYTgwZmRjXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Robert A. Heinlein''s The Puppet Masters (1994)',0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0),
    (85,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDA2Yzg3ZGUtMmJlOC00NzY2LWIxMDYtODcwOTM0ZWZhNWQ0XkEyXkFqcGdeQXVyNjExODE1MDc@..jpg','Ref, The (1994)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (87,'https://images-na.ssl-images-amazon.com/images/M/MV5BNTNlYjBjMGEtOTFkZS00MjM5LTk2ZTktYWVmZTc4NzE3NzAxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','Searching for Bobby Fischer (1993)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (88,'https://images-na.ssl-images-amazon.com/images/M/MV5BZTNiMWUzNGItMzYzMy00MWZmLTk3MTQtOWUxNDQ1ZDljMGE0XkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Sleepless in Seattle (1993)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0),
    (89,'https://images-na.ssl-images-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@..jpg','Blade Runner (1982)',0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0),
    (90,'https://images-na.ssl-images-amazon.com/images/M/MV5BNjU0YzdhNjYtNzdlZi00ZDIwLWIzNWUtOWE2NmVjOGI2ZThiXkEyXkFqcGdeQXVyNDk3NzU2MTQ@..jpg','So I Married an Axe Murderer (1993)',0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0),
    (91,'https://images-na.ssl-images-amazon.com/images/M/MV5BNWE4OTNiM2ItMjY4Ni00ZTViLWFiZmEtZGEyNGY2ZmNlMzIyXkEyXkFqcGdeQXVyMDU5NDcxNw@@..jpg','Nightmare Before Christmas, The (1993)',0,0,0,0,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0),
    (92,'https://images-na.ssl-images-amazon.com/images/M/MV5BZTJkN2VhNGQtOWYwMS00NjYwLWJhYTgtMGNmMDkzMDBlZDdhXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@..jpg','True Romance (1993)',0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0),
    (93,'https://images-na.ssl-images-amazon.com/images/M/MV5BOGE0N2U2YzItM2NmNy00YTE1LWE1ZjktNWRlMWFhYTQzNzgzXkEyXkFqcGdeQXVyMTQxNzMzNDI@..jpg','Welcome to the Dollhouse (1995)',0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0),
    (94,'https://images-na.ssl-images-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@..jpg','Home Alone (1990)',0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (95,'https://images-na.ssl-images-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@..jpg','Aladdin (1992)',0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0),
    (96,'https://images-na.ssl-images-amazon.com/images/M/MV5BN2FhOTQ2MmQtNTY0OC00NWYyLThjNjMtZmZiOTBmYTY4MmM2XkEyXkFqcGdeQXVyMzM4MjM0Nzg@..jpg','Terminator 2: Judgment Day (1991)',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0),
    (97,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@..jpg','Dances with Wolves (1990)',0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1),
    (98,'https://images-na.ssl-images-amazon.com/images/M/MV5BNmUwODM4MWYtOTZlYS00ODI2LTlmY2MtNWZmOWVjNGI0NDdlXkEyXkFqcGdeQXVyNjMxNzQ2NTQ@..jpg','Silence of the Lambs, The (1991)',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0),
    (99,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMzE2Mzc4M15BMl5BanBnXkFtZTcwMTE4NTc1Nw@@..jpg','Snow White and the Seven Dwarfs (1937)',0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0),
    (100,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNzY3MzUxOV5BMl5BanBnXkFtZTcwMDA0NjMyNA@@..jpg','Fargo (1996)',0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,0);


INSERT INTO ratings VALUES
    (1,31,2.5),
    (2,10,4),
    (2,17,5),
    (2,39,5),
    (2,47,4),
    (2,50,4),
    (2,52,3),
    (2,62,3),
    (3,60,3),
    (4,10,4),
    (4,34,5),
    (5,3,4),
    (5,39,4),
    (7,1,3),
    (7,10,3),
    (7,21,3),
    (7,31,3),
    (7,34,4),
    (7,40,4),
    (8,32,5),
    (8,45,2.5),
    (8,47,5),
    (8,50,5),
    (9,1,4),
    (9,17,4),
    (9,26,3),
    (9,36,5),
    (9,47,3),
    (10,50,5),
    (11,50,5),
    (11,70,1),
    (13,1,5),
    (13,47,2.5),
    (15,1,2),
    (15,2,2),
    (15,5,4.5),
    (15,6,4),
    (15,10,3),
    (15,11,2.5),
    (15,14,2.5),
    (15,16,3.5),
    (15,17,3),
    (15,19,1),
    (15,21,4.5),
    (15,22,2.5),
    (15,25,3),
    (15,32,4),
    (15,34,3),
    (15,36,1),
    (15,39,2.5),
    (15,44,3),
    (15,47,5),
    (15,50,5),
    (15,52,2.5),
    (15,62,2),
    (15,70,0.5),
    (15,82,5),
    (15,94,3),
    (15,95,1.5),
    (16,50,4.5),
    (17,6,4.5),
    (17,25,4.5),
    (17,29,4.5),
    (17,32,4.5),
    (17,36,4.5),
    (17,47,5),
    (17,50,5),
    (18,5,3),
    (18,6,4),
    (18,7,3),
    (18,9,3),
    (18,14,2),
    (18,17,4),
    (18,18,3),
    (18,25,5),
    (18,32,5),
    (18,36,3),
    (18,52,3),
    (18,62,4),
    (18,74,2),
    (18,76,3),
    (18,79,2),
    (18,81,3),
    (18,85,4),
    (18,92,3),
    (18,95,3),
    (18,100,4),
    (19,1,3),
    (19,2,3),
    (19,3,3),
    (19,4,3),
    (19,6,3),
    (19,7,3),
    (19,9,3),
    (19,10,3),
    (19,11,3),
    (19,14,5),
    (19,16,5),
    (19,21,3),
    (19,22,3),
    (19,23,1),
    (19,25,3),
    (19,29,3),
    (19,32,3),
    (19,34,4),
    (19,35,3),
    (19,36,3),
    (19,39,3),
    (19,42,3),
    (19,45,3),
    (19,47,5),
    (19,48,3),
    (19,50,4),
    (19,52,3),
    (19,57,3),
    (19,58,3),
    (19,63,3),
    (19,64,2),
    (19,70,4),
    (19,74,3),
    (19,89,3),
    (19,94,3),
    (19,95,3),
    (19,97,4),
    (20,1,3.5),
    (20,32,2.5),
    (20,34,3.5),
    (21,10,3),
    (21,21,3),
    (21,32,4),
    (21,34,4),
    (21,36,3),
    (21,44,3),
    (21,47,4),
    (21,95,3),
    (22,32,4.5),
    (22,44,2),
    (22,47,3.5),
    (22,48,2),
    (22,70,3),
    (23,1,3),
    (23,6,3.5),
    (23,11,3.5),
    (23,16,4),
    (23,19,2),
    (23,20,1.5),
    (23,24,3.5),
    (23,32,4),
    (23,34,3.5),
    (23,47,4.5),
    (23,50,4),
    (23,58,3.5),
    (23,62,4),
    (23,89,4),
    (24,6,5),
    (24,36,3),
    (24,81,4),
    (24,95,3),
    (25,3,3),
    (25,32,4),
    (25,78,3),
    (26,1,5),
    (26,32,4.5),
    (26,47,4.5),
    (26,50,4.5),
    (26,63,0.5),
    (26,69,4.5),
    (27,50,4),
    (27,73,5),
    (28,21,5),
    (28,58,5),
    (30,1,4),
    (30,2,2),
    (30,6,4),
    (30,8,4),
    (30,11,4),
    (30,14,4),
    (30,16,5),
    (30,18,2),
    (30,21,5),
    (30,23,4),
    (30,25,4),
    (30,32,2),
    (30,34,4),
    (30,42,3),
    (30,45,3),
    (30,47,4),
    (30,50,5),
    (30,52,5),
    (30,60,2),
    (30,70,4),
    (30,78,2),
    (30,100,4),
    (31,31,4),
    (31,32,4.5),
    (31,50,3.5),
    (32,2,4),
    (32,19,3),
    (32,31,4),
    (32,44,3),
    (33,19,3),
    (33,88,3),
    (34,6,3),
    (34,21,4),
    (34,32,5),
    (34,39,3),
    (34,47,5),
    (34,50,5),
    (34,70,4),
    (35,24,2.5),
    (36,6,3),
    (36,16,3),
    (36,18,4),
    (36,21,3),
    (36,25,4),
    (36,31,3),
    (36,32,5),
    (36,36,4),
    (36,41,3),
    (36,45,4),
    (36,50,4),
    (36,52,3),
    (36,55,4),
    (36,57,4),
    (36,58,5),
    (36,68,4),
    (37,1,4),
    (38,16,4.5),
    (38,47,4),
    (39,6,4),
    (39,10,5),
    (39,16,5),
    (39,21,3),
    (39,22,4),
    (39,31,3),
    (39,47,4),
    (39,50,3),
    (39,69,3),
    (39,70,5),
    (39,73,3),
    (39,76,3),
    (40,50,4.5),
    (41,2,3.5),
    (41,29,4),
    (43,1,4),
    (43,34,4),
    (43,39,4),
    (43,70,2),
    (44,1,4),
    (44,3,5);
INSERT INTO ratings VALUES
    (44,5,3),
    (44,6,3),
    (44,17,2),
    (44,25,3),
    (44,32,3),
    (44,62,5),
    (44,95,3),
    (46,73,5),
    (47,1,5),
    (47,2,5),
    (47,10,4),
    (47,32,4),
    (47,39,3),
    (47,50,4),
    (47,95,3),
    (48,1,4),
    (48,2,3.5),
    (48,34,3),
    (49,2,5),
    (49,60,3),
    (50,10,4),
    (50,21,3),
    (50,39,2),
    (50,47,3),
    (50,95,3),
    (55,1,3),
    (55,5,3),
    (55,6,5),
    (55,7,2),
    (55,9,3),
    (55,32,4),
    (55,65,5),
    (55,74,3),
    (55,79,3),
    (55,95,3),
    (55,100,3),
    (56,1,4),
    (56,10,4),
    (56,16,4),
    (56,21,2),
    (56,29,4),
    (56,39,5),
    (56,47,4),
    (56,50,4),
    (57,11,5),
    (57,17,5),
    (57,21,4),
    (57,34,5),
    (58,11,5),
    (58,19,1),
    (59,11,2.5),
    (59,32,4.5),
    (59,50,5),
    (60,16,4.5),
    (60,21,3),
    (61,2,3.5),
    (61,34,2),
    (61,48,2.5),
    (61,50,5),
    (63,1,5),
    (63,11,3.5),
    (63,16,5),
    (63,58,0.5),
    (66,21,4),
    (66,22,2),
    (67,1,3),
    (67,6,5),
    (67,12,3),
    (67,16,4),
    (67,17,4),
    (67,18,4),
    (67,28,5),
    (67,34,5),
    (67,42,3),
    (67,43,4),
    (67,60,4),
    (67,62,3),
    (67,88,3),
    (67,94,3),
    (67,95,1),
    (68,1,4),
    (68,2,3),
    (68,11,3.5),
    (69,1,5),
    (69,2,3.5),
    (69,5,5),
    (69,19,4),
    (69,34,4),
    (69,39,4.5),
    (69,48,4.5),
    (70,1,5),
    (70,3,5),
    (70,5,5),
    (70,7,3),
    (70,9,3),
    (70,12,3),
    (70,14,3),
    (70,17,4),
    (70,25,5),
    (70,26,5),
    (70,32,4),
    (70,36,4),
    (70,52,4),
    (70,58,5),
    (70,61,4),
    (70,62,5),
    (70,63,4),
    (70,65,3),
    (70,76,4),
    (70,79,4),
    (70,81,4),
    (70,82,4),
    (70,88,3),
    (70,92,5),
    (70,95,5),
    (70,100,4),
    (72,1,3.5),
    (72,2,2.5),
    (72,47,3.5),
    (72,50,4),
    (73,1,5),
    (73,2,2.5),
    (73,6,4.5),
    (73,10,3),
    (73,15,2.5),
    (73,16,4),
    (73,19,1.5),
    (73,21,3.5),
    (73,25,4.5),
    (73,31,3.5),
    (73,32,5),
    (73,34,2.5),
    (73,36,4.5),
    (73,39,4),
    (73,44,3),
    (73,47,5),
    (73,48,2),
    (73,50,5),
    (73,60,2),
    (73,63,3.5),
    (73,65,2),
    (73,69,4),
    (73,70,3.5),
    (73,98,3),
    (74,10,5),
    (74,16,3),
    (74,17,4),
    (75,1,3),
    (75,3,3),
    (75,32,4),
    (76,45,5),
    (77,1,4),
    (77,6,3.5),
    (77,10,3),
    (77,32,4),
    (77,34,3.5),
    (77,39,2.5),
    (77,47,4),
    (77,62,3.5),
    (77,70,3.5),
    (77,76,3.5),
    (77,95,1.5),
    (78,2,3.5),
    (78,10,5),
    (78,16,5),
    (78,32,5),
    (78,34,3.5),
    (78,39,5),
    (78,47,4),
    (78,50,5),
    (79,1,2),
    (79,2,2.5),
    (79,7,0.5),
    (80,2,2),
    (80,6,4),
    (80,7,4),
    (80,10,3),
    (80,16,5),
    (80,20,1),
    (80,21,4),
    (80,25,4),
    (80,32,5),
    (80,45,4),
    (80,46,3),
    (80,50,3),
    (80,73,5),
    (80,89,3),
    (80,93,1),
    (80,95,2),
    (80,100,2),
    (82,10,3),
    (82,21,3),
    (82,34,5),
    (82,39,5),
    (82,47,5),
    (82,50,4),
    (83,6,5),
    (83,21,1),
    (83,39,4),
    (83,50,5),
    (83,69,3.5),
    (84,1,3.5),
    (85,2,5),
    (85,3,2),
    (85,5,3),
    (85,10,5),
    (85,19,3),
    (85,21,4),
    (85,23,3),
    (85,44,2),
    (85,58,1),
    (86,1,3),
    (86,11,1),
    (86,14,4),
    (86,17,5),
    (86,18,5),
    (86,19,1),
    (86,21,1),
    (86,25,3),
    (86,26,4),
    (86,28,4),
    (86,29,4),
    (86,30,5),
    (86,32,5),
    (86,34,3),
    (86,35,4),
    (86,36,4),
    (86,39,4),
    (86,41,4),
    (86,46,3),
    (86,47,5),
    (86,58,4),
    (86,62,3),
    (86,68,4),
    (86,72,4),
    (86,73,3),
    (86,81,5),
    (86,82,3),
    (86,85,4),
    (86,97,4),
    (87,1,3),
    (87,7,3),
    (87,25,4),
    (87,32,3),
    (87,52,4),
    (87,62,1),
    (87,88,3),
    (87,95,3),
    (88,2,3.5),
    (88,7,4);
INSERT INTO ratings VALUES
    (88,11,3.5),
    (88,21,3.5),
    (88,31,3),
    (88,36,4),
    (88,39,3),
    (88,47,4),
    (88,62,3.5),
    (88,95,2);

