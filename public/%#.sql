create operator %# (procedure = hstore_to_matrix, rightarg = hstore);

alter operator %#(none, hstore) owner to postgres;

