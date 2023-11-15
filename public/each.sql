create function each(hs hstore, out key text, out value text) returns setof setof record
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

alter function each(hstore, out text, out text) owner to postgres;

