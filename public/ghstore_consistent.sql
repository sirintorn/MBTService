create function ghstore_consistent(internal, hstore, smallint, oid, internal) returns boolean
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

alter function ghstore_consistent(internal, hstore, smallint, oid, internal) owner to postgres;

