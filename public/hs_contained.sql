create function hs_contained(hstore, hstore) returns boolean
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

alter function hs_contained(hstore, hstore) owner to postgres;

