create function gc_to_sec(double precision) returns double precision
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT CASE WHEN $1 < 0 THEN 0::float8 WHEN $1/earth() > pi() THEN 2*earth() ELSE 2*earth()*sin($1/(2*earth())) END$$;

alter function gc_to_sec(double precision) owner to postgres;

