create operator -> (procedure = fetchval, leftarg = hstore, rightarg = text);

alter operator ->(hstore, text) owner to postgres;

create operator -> (procedure = slice_array, leftarg = hstore, rightarg = text[]);

alter operator ->(hstore, text[]) owner to postgres;

create operator -> (procedure = cube_coord, leftarg = cube, rightarg = integer);

alter operator ->(cube, integer) owner to postgres;

