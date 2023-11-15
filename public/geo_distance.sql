create function geo_distance(point, point) returns double precision
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

alter function geo_distance(point, point) owner to postgres;

