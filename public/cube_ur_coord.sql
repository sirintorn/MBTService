create function cube_ur_coord(cube, integer) returns double precision
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

alter function cube_ur_coord(cube, integer) owner to postgres;
