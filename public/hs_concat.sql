create function hs_concat(hstore, hstore) returns hstore
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

alter function hs_concat(hstore, hstore) owner to postgres;

