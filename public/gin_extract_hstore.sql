create function gin_extract_hstore(hstore, internal) returns internal
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

alter function gin_extract_hstore(hstore, internal) owner to postgres;

