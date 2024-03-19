create table if not exists student
(
    student_id       int auto_increment,
    person_id        char(16) null,
    course_id        char(10) null,
    total_attendance double   null,

    primary key (student_id),

    constraint person_to_student_fk
    foreign key (person_id) references person (person_id)
    );
/* Query to insert records */
insert into student(person_id,course_id,total_attendance)
values
    ('A11', 'Java_8',168),
    ('B11', 'Python_2',200),
    ('C11', 'D_Ana_3',205),
    ('D11', 'D_Ana_3',210);

insert into student(person_id,course_id,total_attendance)
values('E11', 'Java_8',190);

Probeer een 5de student te creëren, na de record is gecreërd worden, verwijder .
delete from student
where student_id = 15;

delete from student
where student_id = 17;