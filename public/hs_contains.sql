create function hs_contains(hstore, hstore) returns boolean
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

alter function hs_contains(hstore, hstore) owner to postgres;

