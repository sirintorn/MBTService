create operator % (procedure = similarity_op, leftarg = text, rightarg = text, commutator = %, join = contjoinsel, restrict = contsel);

alter operator %(text, text) owner to postgres;

