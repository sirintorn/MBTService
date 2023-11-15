create function hstore_hash(hstore) returns integer
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

alter function hstore_hash(hstore) owner to postgres;

