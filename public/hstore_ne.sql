create function hstore_ne(hstore, hstore) returns boolean
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function hstore_ne(hstore, hstore) owner to postgres;

