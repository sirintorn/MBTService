create type dblink_pkey_results as
(
    position integer,
    colname  text
);

alter type dblink_pkey_results owner to postgres;

