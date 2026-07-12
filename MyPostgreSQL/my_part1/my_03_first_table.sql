drop table if exists basic.students;

create table basics.students (

        id Serial primary key,

        name text not null,

        email text not null unique,

        age integer check (age >= 18),

        created_at timestamp default now()

);