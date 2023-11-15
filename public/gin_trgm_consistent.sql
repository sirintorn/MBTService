create function gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal) returns boolean
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

alter function gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal) owner to postgres;

