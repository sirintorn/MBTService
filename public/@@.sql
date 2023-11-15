create operator @@ (procedure = boolop, leftarg = integer[], rightarg = query_int, commutator = ~~, join = contjoinsel, restrict = _int_matchsel);

alter operator @@(integer[], query_int) owner to postgres;

