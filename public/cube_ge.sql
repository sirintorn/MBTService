create function cube_ge(cube, cube) returns boolean
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

comment on function cube_ge(cube, cube) is 'greater than or equal to';

alter function cube_ge(cube, cube) owner to postgres;

