create operator = (procedure = ltree_eq, leftarg = ltree, rightarg = ltree, commutator = =, negator = <>, join = eqjoinsel, restrict = eqsel, merges);

alter operator =(ltree, ltree) owner to postgres;

create operator = (procedure = citext_eq, leftarg = citext, rightarg = citext, commutator = =, negator = <>, join = eqjoinsel, restrict = eqsel, hashes, merges);

alter operator =(citext, citext) owner to postgres;

create operator = (procedure = hstore_eq, leftarg = hstore, rightarg = hstore, commutator = =, negator = <>, join = eqjoinsel, restrict = eqsel, hashes, merges);

alter operator =(hstore, hstore) owner to postgres;

create operator = (procedure = cube_eq, leftarg = cube, rightarg = cube, commutator = =, negator = <>, join = eqjoinsel, restrict = eqsel, merges);

alter operator =(cube, cube) owner to postgres;

