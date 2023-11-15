create function g_int_union(internal, internal) returns integer[]
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

alter function g_int_union(internal, internal) owner to postgres;

