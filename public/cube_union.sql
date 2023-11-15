create function cube_union(cube, cube) returns cube
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

alter function cube_union(cube, cube) owner to postgres;

