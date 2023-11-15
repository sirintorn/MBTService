create operator < (procedure = ltree_lt, leftarg = ltree, rightarg = ltree, commutator = >, negator = >=, join = contjoinsel, restrict = contsel);

alter operator <(ltree, ltree) owner to postgres;

create operator < (procedure = citext_lt, leftarg = citext, rightarg = citext, commutator = >, negator = >=, join = scalarltjoinsel, restrict = scalarltsel);

alter operator <(citext, citext) owner to postgres;

create operator < (procedure = cube_lt, leftarg = cube, rightarg = cube, commutator = >, negator = >=, join = scalarltjoinsel, restrict = scalarltsel);

alter operator <(cube, cube) owner to postgres;

