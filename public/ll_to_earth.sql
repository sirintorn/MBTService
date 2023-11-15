create function ll_to_earth(double precision, double precision) returns earth
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT cube(cube(cube(earth()*cos(radians($1))*cos(radians($2))),earth()*cos(radians($1))*sin(radians($2))),earth()*sin(radians($1)))::earth$$;

alter function ll_to_earth(double precision, double precision) owner to postgres;

