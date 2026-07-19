drop table if exists basics.app_events;

create table basics.app_events (

    id UUID primary key default gen_random_uuid(),

    event_name TEXT not null,

    metadata jsonb default '{}'::jsonb,

    created_at timestamp default now()

);



insert into basics.app_events (event_name, metadata)
values
(
    'sign_up',
    '{"browser": "chrome"}'
),
(
    'sign_in',
    '{"user_name": "Abobus"}'
);


--select * from basics.app_events;


select
    event_name,
    metadata ->> 'browser' as browser
from basics.app_events
where metadata ? 'browser';