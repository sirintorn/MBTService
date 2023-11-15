create operator #<=# (procedure = hstore_le, leftarg = hstore, rightarg = hstore, commutator = #>=#, negator = #>#, join = scalarlejoinsel, restrict = scalarlesel);

alter operator #<=#(hstore, hstore) owner to postgres;

