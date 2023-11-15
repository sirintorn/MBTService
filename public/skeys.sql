create function skeys(hstore) returns setof setof text
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

alter function skeys(hstore) owner to postgres;

