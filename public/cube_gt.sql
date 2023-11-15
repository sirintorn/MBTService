create function cube_gt(cube, cube) returns boolean
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

comment on function cube_gt(cube, cube) is 'greater than';

alter function cube_gt(cube, cube) owner to postgres;

