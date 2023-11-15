create operator ?| (procedure = exists_any, leftarg = hstore, rightarg = text[], join = contjoinsel, restrict = contsel);

alter operator ?|(hstore, text[]) owner to postgres;

