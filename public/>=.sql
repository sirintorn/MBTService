create operator >= (procedure = ltree_ge, leftarg = ltree, rightarg = ltree, commutator = <=, negator = <, join = contjoinsel, restrict = contsel);

alter operator >=(ltree, ltree) owner to postgres;

create operator >= (procedure = citext_ge, leftarg = citext, rightarg = citext, commutator = <=, negator = <, join = scalargejoinsel, restrict = scalargesel);

alter operator >=(citext, citext) owner to postgres;

create operator >= (procedure = cube_ge, leftarg = cube, rightarg = cube, commutator = <=, negator = <, join = scalargejoinsel, restrict = scalargesel);

alter operator >=(cube, cube) owner to postgres;

