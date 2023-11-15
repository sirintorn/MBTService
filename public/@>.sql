create operator @> (procedure = ltree_isparent, leftarg = ltree, rightarg = ltree, commutator = <@, join = contjoinsel, restrict = ltreeparentsel);

alter operator @>(ltree, ltree) owner to postgres;

create operator @> (procedure = _ltree_isparent, leftarg = ltree[], rightarg = ltree, commutator = <@, join = contjoinsel, restrict = contsel);

alter operator @>(ltree[], ltree) owner to postgres;

create operator @> (procedure = _ltree_r_risparent, leftarg = ltree, rightarg = ltree[], commutator = <@, join = contjoinsel, restrict = contsel);

alter operator @>(ltree, ltree[]) owner to postgres;

create operator @> (procedure = _int_contains, leftarg = integer[], rightarg = integer[], commutator = <@, join = _int_contains_joinsel, restrict = _int_contains_sel);

alter operator @>(integer[], integer[]) owner to postgres;

create operator @> (procedure = hs_contains, leftarg = hstore, rightarg = hstore, commutator = <@, join = contjoinsel, restrict = contsel);

alter operator @>(hstore, hstore) owner to postgres;

create operator @> (procedure = cube_contains, leftarg = cube, rightarg = cube, commutator = <@, join = contjoinsel, restrict = contsel);

alter operator @>(cube, cube) owner to postgres;

