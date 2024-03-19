create table if not exists employee
(
    employee_id     int      not null unique auto_increment,
    person_id       char(16) not null,
    department_id   int      not null,
    work_start_date date     not null,
    work_end_date   date     null,
    profile_photo   blob     null,

    primary key (employee_id),

    constraint person_to_employee_fk
    foreign key (person_id) references person (person_id)
    );

insert into Employee(person_id,department_id,work_start_date,work_end_date,Profile_photo)
values
    ('A11',1, date '2003-07-21', null, null),
    ('B11', 1,date '2004-05-23', null,null),
    ('C11', 2,date '2004-06-07',null,null);