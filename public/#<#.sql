create operator #<# (procedure = hstore_lt, leftarg = hstore, rightarg = hstore, commutator = #>#, negator = #>=#, join = scalarltjoinsel, restrict = scalarltsel);

alter operator #<#(hstore, hstore) owner to postgres;

