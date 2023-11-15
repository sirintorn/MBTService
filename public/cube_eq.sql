create function cube_eq(cube, cube) returns boolean
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

comment on function cube_eq(cube, cube) is 'same as';

alter function cube_eq(cube, cube) owner to postgres;

