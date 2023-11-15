create operator + (procedure = intarray_push_elem, leftarg = integer[], rightarg = integer);

alter operator +(integer[], integer) owner to postgres;

create operator + (procedure = intarray_push_array, leftarg = integer[], rightarg = integer[], commutator = +);

alter operator +(integer[], integer[]) owner to postgres;

