create operator ^<@ (procedure = ltree_risparent, leftarg = ltree, rightarg = ltree, commutator = ^@>, join = contjoinsel, restrict = contsel);

alter operator ^<@(ltree, ltree) owner to postgres;

create operator ^<@ (procedure = _ltree_r_isparent, leftarg = ltree, rightarg = ltree[], commutator = ^@>, join = contjoinsel, restrict = contsel);

alter operator ^<@(ltree, ltree[]) owner to postgres;

create operator ^<@ (procedure = _ltree_risparent, leftarg = ltree[], rightarg = ltree, commutator = ^@>, join = contjoinsel, restrict = contsel);

alter operator ^<@(ltree[], ltree) owner to postgres;

