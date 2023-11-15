create operator <@ (procedure = ltree_risparent, leftarg = ltree, rightarg = ltree, commutator = @>, join = contjoinsel, restrict = ltreeparentsel);

alter operator <@(ltree, ltree) owner to postgres;

create operator <@ (procedure = _ltree_r_isparent, leftarg = ltree, rightarg = ltree[], commutator = @>, join = contjoinsel, restrict = contsel);

alter operator <@(ltree, ltree[]) owner to postgres;

create operator <@ (procedure = _ltree_risparent, leftarg = ltree[], rightarg = ltree, commutator = @>, join = contjoinsel, restrict = contsel);

alter operator <@(ltree[], ltree) owner to postgres;

create operator <@ (procedure = _int_contained, leftarg = integer[], rightarg = integer[], commutator = @>, join = _int_contained_joinsel, restrict = _int_contained_sel);

alter operator <@(integer[], integer[]) owner to postgres;

create operator <@ (procedure = hs_contained, leftarg = hstore, rightarg = hstore, commutator = @>, join = contjoinsel, restrict = contsel);

alter operator <@(hstore, hstore) owner to postgres;

create operator <@ (procedure = cube_contained, leftarg = cube, rightarg = cube, commutator = @>, join = contjoinsel, restrict = contsel);

alter operator <@(cube, cube) owner to postgres;

