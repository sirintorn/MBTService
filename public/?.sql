create operator ? (procedure = exist, leftarg = hstore, rightarg = text, join = contjoinsel, restrict = contsel);

alter operator ?(hstore, text) owner to postgres;

-- Cyclic dependencies found

create operator ? (procedure = lt_q_rregex, leftarg = lquery[], rightarg = ltree, commutator = ?, join = contjoinsel, restrict = contsel);

alter operator ?(lquery[], ltree) owner to postgres;

create operator ? (procedure = lt_q_regex, leftarg = ltree, rightarg = lquery[], commutator = ?, join = contjoinsel, restrict = contsel);

alter operator ?(ltree, lquery[]) owner to postgres;

-- Cyclic dependencies found

create operator ? (procedure = _lt_q_rregex, leftarg = lquery[], rightarg = ltree[], commutator = ?, join = contjoinsel, restrict = contsel);

alter operator ?(lquery[], ltree[]) owner to postgres;

create operator ? (procedure = _lt_q_regex, leftarg = ltree[], rightarg = lquery[], commutator = ?, join = contjoinsel, restrict = contsel);

alter operator ?(ltree[], lquery[]) owner to postgres;

