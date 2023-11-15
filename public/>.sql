create operator > (procedure = ltree_gt, leftarg = ltree, rightarg = ltree, commutator = <, negator = <=, join = contjoinsel, restrict = contsel);

alter operator >(ltree, ltree) owner to postgres;

create operator > (procedure = citext_gt, leftarg = citext, rightarg = citext, commutator = <, negator = <=, join = scalargtjoinsel, restrict = scalargtsel);

alter operator >(citext, citext) owner to postgres;

create operator > (procedure = cube_gt, leftarg = cube, rightarg = cube, commutator = <, negator = <=, join = scalargtjoinsel, restrict = scalargtsel);

alter operator >(cube, cube) owner to postgres;

