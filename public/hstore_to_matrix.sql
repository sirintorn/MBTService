create function hstore_to_matrix(hstore) returns text[]
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

alter function hstore_to_matrix(hstore) owner to postgres;

