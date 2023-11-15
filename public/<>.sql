create operator <> (procedure = ltree_ne, leftarg = ltree, rightarg = ltree, commutator = <>, negator = =, join = neqjoinsel, restrict = neqsel);

alter operator <>(ltree, ltree) owner to postgres;

create operator <> (procedure = citext_ne, leftarg = citext, rightarg = citext, commutator = <>, negator = =, join = neqjoinsel, restrict = neqsel);

alter operator <>(citext, citext) owner to postgres;

create operator <> (procedure = hstore_ne, leftarg = hstore, rightarg = hstore, commutator = <>, negator = =, join = neqjoinsel, restrict = neqsel);

alter operator <>(hstore, hstore) owner to postgres;

create operator <> (procedure = cube_ne, leftarg = cube, rightarg = cube, commutator = <>, negator = =, join = neqjoinsel, restrict = neqsel);

alter operator <>(cube, cube) owner to postgres;

