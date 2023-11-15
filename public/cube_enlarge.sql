create function cube_enlarge(cube, double precision, integer) returns cube
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

alter function cube_enlarge(cube, double precision, integer) owner to postgres;

