create operator #># (procedure = hstore_gt, leftarg = hstore, rightarg = hstore, commutator = #<#, negator = #<=#, join = scalargtjoinsel, restrict = scalargtsel);

alter operator #>#(hstore, hstore) owner to postgres;

