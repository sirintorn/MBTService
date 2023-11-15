create function cube_cmp(cube, cube) returns integer
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

comment on function cube_cmp(cube, cube) is 'btree comparison function';

alter function cube_cmp(cube, cube) owner to postgres;

