create function fetchval(hstore, text) returns text
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

alter function fetchval(hstore, text) owner to postgres;

