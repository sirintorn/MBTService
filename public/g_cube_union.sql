create function g_cube_union(internal, internal) returns cube
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

alter function g_cube_union(internal, internal) owner to postgres;

