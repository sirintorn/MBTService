create domain earth as cube
    constraint not_point check (cube_is_point(VALUE)) constraint not_3d check (cube_dim(VALUE) <= 3) constraint on_surface check (abs((
        (cube_distance(VALUE, '(0)'::cube) / earth()) - (1)::double precision)) < '1e-06'::double precision);

alter domain earth owner to postgres;

create function earth() returns double precision
    immutable
    parallel safe
    language sql
as
$$SELECT '6378168'::float8$$;

alter function earth() owner to postgres;

