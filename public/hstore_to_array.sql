create function hstore_to_array(hstore) returns text[]
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

alter function hstore_to_array(hstore) owner to postgres;

