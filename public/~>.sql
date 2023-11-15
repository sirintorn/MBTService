create operator ~> (procedure = cube_coord_llur, leftarg = cube, rightarg = integer);

alter operator ~>(cube, integer) owner to postgres;

