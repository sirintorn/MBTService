create function cube_le(cube, cube) returns boolean
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

comment on function cube_le(cube, cube) is 'lower than or equal to';

alter function cube_le(cube, cube) owner to postgres;

