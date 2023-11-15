create function hstore_cmp(hstore, hstore) returns integer
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

alter function hstore_cmp(hstore, hstore) owner to postgres;

