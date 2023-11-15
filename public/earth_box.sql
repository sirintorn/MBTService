create function earth_box(earth, double precision) returns cube
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT cube_enlarge($1, gc_to_sec($2), 3)$$;

alter function earth_box(earth, double precision) owner to postgres;

