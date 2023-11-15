create function hstore_recv(internal) returns hstore
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

alter function hstore_recv(internal) owner to postgres;

