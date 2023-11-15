create function hstore_lt(hstore, hstore) returns boolean
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

alter function hstore_lt(hstore, hstore) owner to postgres;

