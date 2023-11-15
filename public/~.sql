create operator ~ (procedure = texticregexeq, leftarg = citext, rightarg = citext, negator = !~, join = icregexeqjoinsel, restrict = icregexeqsel);

alter operator ~(citext, citext) owner to postgres;

create operator ~ (procedure = texticregexeq, leftarg = citext, rightarg = text, negator = !~, join = icregexeqjoinsel, restrict = icregexeqsel);

alter operator ~(citext, text) owner to postgres;

create operator ~ (procedure = _int_contained, leftarg = integer[], rightarg = integer[], commutator = @, join = _int_contained_joinsel, restrict = _int_contained_sel);

alter operator ~(integer[], integer[]) owner to postgres;

create operator ~ (procedure = hs_contained, leftarg = hstore, rightarg = hstore, commutator = @, join = contjoinsel, restrict = contsel);

alter operator ~(hstore, hstore) owner to postgres;

create operator ~ (procedure = cube_contained, leftarg = cube, rightarg = cube, commutator = @, join = contjoinsel, restrict = contsel);

alter operator ~(cube, cube) owner to postgres;

-- Cyclic dependencies found

create operator ~ (procedure = ltq_rregex, leftarg = lquery, rightarg = ltree, commutator = ~, join = contjoinsel, restrict = contsel);

alter operator ~(lquery, ltree) owner to postgres;

create operator ~ (procedure = ltq_regex, leftarg = ltree, rightarg = lquery, commutator = ~, join = contjoinsel, restrict = contsel);

alter operator ~(ltree, lquery) owner to postgres;

-- Cyclic dependencies found

create operator ~ (procedure = _ltq_rregex, leftarg = lquery, rightarg = ltree[], commutator = ~, join = contjoinsel, restrict = contsel);

alter operator ~(lquery, ltree[]) owner to postgres;

create operator ~ (procedure = _ltq_regex, leftarg = ltree[], rightarg = lquery, commutator = ~, join = contjoinsel, restrict = contsel);

alter operator ~(ltree[], lquery) owner to postgres;

