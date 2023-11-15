create function hstore_to_jsonb_loose(hstore) returns jsonb
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

alter function hstore_to_jsonb_loose(hstore) owner to postgres;

