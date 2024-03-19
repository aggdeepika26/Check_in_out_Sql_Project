create table course
(
    course_id  char(20)     not null unique,
    title      varchar(255) not null,
    start_date date         not null,
    end_date   date         null,

    primary key (course_id)
);

insert into course (course_id, title, start_date, end_date)
values ('JAVA_SEP_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', date '2020-09-01',
        date '2021-09-01'),
       ('JAVA_JAN_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', date '2021-01-01',
        date '2022-01-01'),
       ('JAVA_JUNI_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', date '2021-06-01',
        date '2022-06-01'),
       ('CSHARP_JUNI_2023', 'C# fundamentals, MSSQL, Microsoft Examinations', date '2021-06-01',
        date '2022-06-01')
;