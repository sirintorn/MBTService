create function sec_to_gc(double precision) returns double precision
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT CASE WHEN $1 < 0 THEN 0::float8 WHEN $1/(2*earth()) > 1 THEN pi()*earth() ELSE 2*earth()*asin($1/(2*earth())) END$$;

alter function sec_to_gc(double precision) owner to postgres;

