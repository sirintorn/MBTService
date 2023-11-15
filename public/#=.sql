create operator #= (procedure = populate_record, leftarg = anyelement, rightarg = hstore);

alter operator #=(anyelement, hstore) owner to postgres;

