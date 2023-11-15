create operator # (procedure = icount, rightarg = integer[]);

alter operator #(none, integer[]) owner to postgres;

create operator # (procedure = idx, leftarg = integer[], rightarg = integer);

alter operator #(integer[], integer) owner to postgres;

