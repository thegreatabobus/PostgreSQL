-- db -> schema -> table -> rows

create schema if not exists basics;

create extension if not exists pgcrypto;

select schema_name
from information_schema.schemata
order by schema_name;

