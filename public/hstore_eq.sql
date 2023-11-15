create function hstore_eq(hstore, hstore) returns boolean
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

alter function hstore_eq(hstore, hstore) owner to postgres;

