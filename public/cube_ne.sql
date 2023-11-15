create function cube_ne(cube, cube) returns boolean
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

comment on function cube_ne(cube, cube) is 'different';

alter function cube_ne(cube, cube) owner to postgres;

