create table user
(
    ID int(10) Not NULL Auto_Increment,
    Email varchar(255) UNIQUE ,
    GSM_Nummer Bigint(13) UNIQUE,
    Wachtwoord varchar(20),
    Activatie_code varchar(20),
    Primary Key(ID)
);

insert into user (Email,GSM_Nummer,Wachtwoord,Activatie_Code)
values ('deepika@yahoo.com', 326378923434,'3456', 'DDD34TY'),
      ('Alisha@yahoo.com', 324234564787,'1231', 'FDD84PY'),
     ('Alpna@yahoo.com', 324234564980,'bbb1234', 'Ftry679');


/* Insert a new record */
insert into user (Email,GSM_Nummer,Wachtwoord,Activatie_Code)
values ('Ania@yahoo.com', 32637345647,'4567', 'DTHUYT');

insert into user (Email,GSM_Nummer,Wachtwoord,Activatie_Code)
values ('Rishu@yahoo.com', 32456789764,'2345', 'DTH890');

/* Update het wachtwoord van de 2e gebruiker uit de gebruikerstabel. Het nieuwe wachtwoord is "2021*/
update user
set  wachtwoord =  '2021'
where Id = 2;

/* Maak een selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'*/
select * from user
where email like 'Al%';




