create function cube_contains(cube, cube) returns boolean
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

comment on function cube_contains(cube, cube) is 'contains';

alter function cube_contains(cube, cube) owner to postgres;

