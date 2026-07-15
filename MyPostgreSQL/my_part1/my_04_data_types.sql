drop table if exists basics.products_basics;

create table basics.products_basics (

    id serial primary key,

    name varchar(100) not null,

    description text,

    stock integer default 0,

    total_views bigint default 0,

    price numeric(10,2),

    is_active boolean default true
)

    insert into basics.products_basic
        (name, description, stock, total_views, price, is_active)
    values
        ('product 1',
        'product desc',
        100,
        1200,
        2455.65,
        true)

select * from basics.products_basic;
