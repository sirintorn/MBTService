create function latitude(earth) returns double precision
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT CASE WHEN cube_ll_coord($1, 3)/earth() < -1 THEN -90::float8 WHEN cube_ll_coord($1, 3)/earth() > 1 THEN 90::float8 ELSE degrees(asin(cube_ll_coord($1, 3)/earth())) END$$;

alter function latitude(earth) owner to postgres;

