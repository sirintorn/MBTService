create operator ?& (procedure = exists_all, leftarg = hstore, rightarg = text[], join = contjoinsel, restrict = contsel);

alter operator ?&(hstore, text[]) owner to postgres;

