create function earth_distance(earth, earth) returns double precision
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT sec_to_gc(cube_distance($1, $2))$$;

alter function earth_distance(earth, earth) owner to postgres;

