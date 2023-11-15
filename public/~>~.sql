create operator ~>~ (procedure = citext_pattern_gt, leftarg = citext, rightarg = citext, commutator = ~<~, negator = ~<=~, join = scalargtjoinsel, restrict = scalargtsel);

alter operator ~>~(citext, citext) owner to postgres;

