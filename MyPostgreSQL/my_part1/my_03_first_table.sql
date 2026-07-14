drop table if exists basic.students;

create table basics.students (

        id Serial primary key,

        name text not null,

        email text not null unique,

        age integer check (age >= 18),

        created_at timestamp default now()

);



insert into basics.students (name, email, age)
values
    ('Sangam', 'sangam@gmail.com', 55),
    ('Jogn', 'john@gmail.com', 23);



select * from basics.students;