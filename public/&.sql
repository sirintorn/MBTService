create operator & (procedure = _int_inter, leftarg = integer[], rightarg = integer[], commutator = &);

alter operator &(integer[], integer[]) owner to postgres;

