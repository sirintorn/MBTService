create function gin_consistent_hstore(internal, smallint, hstore, integer, internal, internal) returns boolean
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

alter function gin_consistent_hstore(internal, smallint, hstore, integer, internal, internal) owner to postgres;

