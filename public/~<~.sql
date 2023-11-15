create operator ~<~ (procedure = citext_pattern_lt, leftarg = citext, rightarg = citext, commutator = ~>~, negator = ~>=~, join = scalarltjoinsel, restrict = scalarltsel);

alter operator ~<~(citext, citext) owner to postgres;

