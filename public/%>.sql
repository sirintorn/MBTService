create operator %> (procedure = word_similarity_commutator_op, leftarg = text, rightarg = text, commutator = <%, join = contjoinsel, restrict = contsel);

alter operator %>(text, text) owner to postgres;

