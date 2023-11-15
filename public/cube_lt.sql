create function cube_lt(cube, cube) returns boolean
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

comment on function cube_lt(cube, cube) is 'lower than';

alter function cube_lt(cube, cube) owner to postgres;

