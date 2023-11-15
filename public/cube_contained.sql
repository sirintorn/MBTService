create function cube_contained(cube, cube) returns boolean
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

comment on function cube_contained(cube, cube) is 'contained in';

alter function cube_contained(cube, cube) owner to postgres;

