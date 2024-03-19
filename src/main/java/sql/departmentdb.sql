create table department
(
    ID int(10) Not NULL Auto_Increment,
    Title varchar(50) Not Null,
    ParentDepartmentId int(10),
    Primary Key(ID),
    ParentDepartmentId INT REFERENCES department(DepartmentId),
);

insert into department (Title, ParentDepartmentId)
values ('Instructors', null),
       ('Human Resources', null),
       ('Administration', null),
       ('IT Services', null),
       ('Accounting', null),
       ('Java', 1),
       ('C#', 1),
       ('JavaScript', 1),
       ('Python', 1),
       ('System and Networking', 1),
       ('Ethical Hacking', 1),
       ('Data Analysis', 1),
       ('Job Applications', 2),
       ('Personal Development ', 2),
       ('Financial Accounting', 5),
       ('Student Reimbursement', 5),
       ('Computer Hardware', 4);

/* Lees de records van alle afdelingen die onderafdeling (sub-departement) zijn van 'Instructors*/
select * from department;

/*  Creëer een selectie-query om afdelingen te zoeken die bevat 'java' in hun titels */

select * from department
where Title like 'java%';