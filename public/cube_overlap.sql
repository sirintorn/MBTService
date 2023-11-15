create function cube_overlap(cube, cube) returns boolean
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

comment on function cube_overlap(cube, cube) is 'overlaps';

alter function cube_overlap(cube, cube) owner to postgres;

