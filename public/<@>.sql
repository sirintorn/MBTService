create operator <@> (procedure = geo_distance, leftarg = point, rightarg = point, commutator = <@>);

alter operator <@>(point, point) owner to postgres;

