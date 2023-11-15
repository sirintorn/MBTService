create operator <= (procedure = ltree_le, leftarg = ltree, rightarg = ltree, commutator = >=, negator = >, join = contjoinsel, restrict = contsel);

alter operator <=(ltree, ltree) owner to postgres;

create operator <= (procedure = citext_le, leftarg = citext, rightarg = citext, commutator = >=, negator = >, join = scalarlejoinsel, restrict = scalarlesel);

alter operator <=(citext, citext) owner to postgres;

create operator <= (procedure = cube_le, leftarg = cube, rightarg = cube, commutator = >=, negator = >, join = scalarlejoinsel, restrict = scalarlesel);

alter operator <=(cube, cube) owner to postgres;

