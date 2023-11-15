create function hstore_to_jsonb(hstore) returns jsonb
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

alter function hstore_to_jsonb(hstore) owner to postgres;

