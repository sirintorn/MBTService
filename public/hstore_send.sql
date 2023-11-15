create function hstore_send(hstore) returns bytea
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

alter function hstore_send(hstore) owner to postgres;

