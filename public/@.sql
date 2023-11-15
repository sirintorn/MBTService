create operator @ (procedure = _int_contains, leftarg = integer[], rightarg = integer[], commutator = ~, join = _int_contains_joinsel, restrict = _int_contains_sel);

alter operator @(integer[], integer[]) owner to postgres;

create operator @ (procedure = hs_contains, leftarg = hstore, rightarg = hstore, commutator = ~, join = contjoinsel, restrict = contsel);

alter operator @(hstore, hstore) owner to postgres;

create operator @ (procedure = cube_contains, leftarg = cube, rightarg = cube, commutator = ~, join = contjoinsel, restrict = contsel);

alter operator @(cube, cube) owner to postgres;

-- Cyclic dependencies found

create operator @ (procedure = ltxtq_exec, leftarg = ltree, rightarg = ltxtquery, commutator = @, join = contjoinsel, restrict = contsel);

alter operator @(ltree, ltxtquery) owner to postgres;

create operator @ (procedure = ltxtq_rexec, leftarg = ltxtquery, rightarg = ltree, commutator = @, join = contjoinsel, restrict = contsel);

alter operator @(ltxtquery, ltree) owner to postgres;

-- Cyclic dependencies found

create operator @ (procedure = _ltxtq_exec, leftarg = ltree[], rightarg = ltxtquery, commutator = @, join = contjoinsel, restrict = contsel);

alter operator @(ltree[], ltxtquery) owner to postgres;

create operator @ (procedure = _ltxtq_rexec, leftarg = ltxtquery, rightarg = ltree[], commutator = @, join = contjoinsel, restrict = contsel);

alter operator @(ltxtquery, ltree[]) owner to postgres;

