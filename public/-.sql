create operator - (procedure = intarray_del_elem, leftarg = integer[], rightarg = integer);

alter operator -(integer[], integer) owner to postgres;

create operator - (procedure = intset_subtract, leftarg = integer[], rightarg = integer[]);

alter operator -(integer[], integer[]) owner to postgres;

create operator - (procedure = delete, leftarg = hstore, rightarg = text);

alter operator -(hstore, text) owner to postgres;

create operator - (procedure = delete, leftarg = hstore, rightarg = text[]);

alter operator -(hstore, text[]) owner to postgres;

create operator - (procedure = delete, leftarg = hstore, rightarg = hstore);

alter operator -(hstore, hstore) owner to postgres;

