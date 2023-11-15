create operator ^@> (procedure = ltree_isparent, leftarg = ltree, rightarg = ltree, commutator = ^<@, join = contjoinsel, restrict = contsel);

alter operator ^@>(ltree, ltree) owner to postgres;

create operator ^@> (procedure = _ltree_isparent, leftarg = ltree[], rightarg = ltree, commutator = ^<@, join = contjoinsel, restrict = contsel);

alter operator ^@>(ltree[], ltree) owner to postgres;

create operator ^@> (procedure = _ltree_r_risparent, leftarg = ltree, rightarg = ltree[], commutator = ^<@, join = contjoinsel, restrict = contsel);

alter operator ^@>(ltree, ltree[]) owner to postgres;

