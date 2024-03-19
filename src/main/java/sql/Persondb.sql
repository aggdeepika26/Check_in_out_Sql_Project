create table if not exists person
(
    person_id     char(16)         not null unique,
    first_name    varchar(255)     not null,
    last_name     varchar(255)     not null,
    date_of_birth date             not null,
    gender        char(1)    default 'U',
    nick_name     varchar(20)          null,
    user_id       int              not null,
    Primary Key(person_id),
    Constraint person_user foreign key(user_id) references user(ID)
);

insert into person (person_id,first_name,last_name,date_of_birth,nick_name,user_id)
values
    ('A11', 'Rahul','Goel', date '2003-07-23',null, 1),
    ('B11', 'Akash','Jain', date '2004-05-23',null,3),
    ('C11', 'Saran','Kashyap', date '2004-06-07',null,2);


insert into person (person_id,first_name,last_name,date_of_birth,nick_name,user_id)
values ('D11', 'Moksh','Goel', date '2003-07-19',null, 4);

insert into person (person_id,first_name,last_name,date_of_birth,nick_name,user_id)
values ('E11', 'Rishu','Goel', date '2003-08-19',null, 5);

/*
Verander (update) de voornaam en de familienaam van een persoon bij je keuze
 Query to update the first and last name where person id is c11 */

update person
set  first_name =  'Ria',last_name = 'Jain'
 where person_id = 'c11';

