create operator | (procedure = intset_union_elem, leftarg = integer[], rightarg = integer);

alter operator |(integer[], integer) owner to postgres;

create operator | (procedure = _int_union, leftarg = integer[], rightarg = integer[], commutator = |);

alter operator |(integer[], integer[]) owner to postgres;

