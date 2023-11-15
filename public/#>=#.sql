create operator #>=# (procedure = hstore_ge, leftarg = hstore, rightarg = hstore, commutator = #<=#, negator = #<#, join = scalargejoinsel, restrict = scalargesel);

alter operator #>=#(hstore, hstore) owner to postgres;

