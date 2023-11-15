create function longitude(earth) returns double precision
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT degrees(atan2(cube_ll_coord($1, 2), cube_ll_coord($1, 1)))$$;

alter function longitude(earth) owner to postgres;

