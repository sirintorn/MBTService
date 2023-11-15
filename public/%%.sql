create operator %% (procedure = hstore_to_array, rightarg = hstore);

alter operator %%(none, hstore) owner to postgres;

