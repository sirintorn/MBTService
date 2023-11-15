create function hstore_to_json(hstore) returns json
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

alter function hstore_to_json(hstore) owner to postgres;

