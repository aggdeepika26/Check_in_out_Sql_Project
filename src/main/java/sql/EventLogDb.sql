create table EventLog
( EventLog_Id int(10) not null Auto_Increment,
  user_Id int not null,
  Event_date date ,
  check_in_time time ,
  check_out_time time,
  primary key(EventLog_Id),
  constraint eventLog_user foreign key(user_Id) references user(Id)
);

/*creëer 20 evenementen, inclusief check-in en check-outs. Geef verschillende datums voor de nieuwe records*/

insert into EventLog (user_Id,Event_date,check_in_time,check_out_time)
values
    (1, date '2024-03-15',time '14:00',time '15:00'),
    (2, date '2024-03-15',time '13:00',time '15:00'),
    (3, date '2024-03-15',time '14:50',time'16:00'),
    (1, date '2024-03-15',time '17:00',time '18:00'),
    (2, date '2024-03-15',time '17:00',time '18:00'),
    (3, date '2024-03-15',time '16:00',time '18:00'),
    (1, date '2024-03-16',time '14:00',time '15:00'),
    (4, date '2024-03-16',time '15:00',time '17:00'),
    (5, date '2024-03-16',time '16:00',time '18:00'),
    (1, date '2024-03-16',time '17:00',time '18:00'),
    (2, date '2024-03-17',time '17:00',time '18:00'),
    (3, date '2024-03-17',time '16:00',time '18:00'),
    (1, date '2024-03-17',time '14:00',time '15:00'),
    (4, date '2024-03-17',time '15:00',time '17:00'),
    (5, date '2024-03-17',time '16:00',time '18:00'),
    (1, date '2024-03-17',time '17:00',time '18:00'),
    (5, date '2024-03-18',time '11:00',time '12:00'),
    (1, date '2024-03-18',time '12:00',time '13:00'),
    (5, date '2024-03-18',time '13:00',time '14:00'),
    (1, date '2024-03-18',time '13:00',time '14:00'),
    (1, date '2024-03-19',time '08:00',null);


/*  wanneer een gebruiker incheckt, heeft de uitcheckkolom geen waarde.*/
insert into eventlog(user_Id,Event_date,check_in_time,check_out_time)
values(2, curdate(),now(),null);


/*wanneer een gebruiker uitcheckt, moeten we het relevante event_log bijwerken in plaats van een nieuw record te maken*/
update eventlog
set check_out_time = now()
where user_Id = 1 and check_out_time is null;

/*creëer een selectıequery om logs van het vandaag te zien*/

select * from eventlog
where Event_date = curdate();

/*creëer een selectiequery om uitchekken vroeger dan 17:00 te zien.*/

select * from eventlog
where check_out_time < time('17:00:00');

/* sorteer alle logs bij evenementdatum*/
select * from eventlog
order by Event_date desc;
