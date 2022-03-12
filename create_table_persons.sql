create schema netology;

create table persons
(
    name           varchar(255) not null,
    surname        varchar(255) not null,
    age            int check (age >= 0),
    phone_number   varchar(255) not null default 'unknown',
    city_of_living varchar(255) not null default 'unknown',
    primary key (name, surname, age)
);

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Ivan', 'Sazonov', 36, '89450123456', 'Moscow');

insert into persons (name, surname, age)
values ('Petr', 'Markov', 27);
update persons
set city_of_living = 'Omsk'
where name = 'Petr'
  and surname = 'Markov'
  and age = 27;

insert into persons (name, surname, age, city_of_living)
values ('Oleg', 'Petrov', 55, 'Moscow');

insert into persons (name, surname, age, city_of_living)
values ('Roman', 'Vetrov', 30, 'Kazan');

update persons
set phone_number = '88431234567'
where name = 'Roman'
  and surname = 'Vetrov'
  and age = 30;

insert into persons (name, surname, age, city_of_living)
values ('Anna', 'Koneva', 22, 'Kazan');