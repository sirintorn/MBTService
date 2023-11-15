create function svals(hstore) returns setof setof text
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

alter function svals(hstore) owner to postgres;

