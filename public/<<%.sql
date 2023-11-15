create operator <<% (procedure = strict_word_similarity_op, leftarg = text, rightarg = text, commutator = %>>, join = contjoinsel, restrict = contsel);

alter operator <<%(text, text) owner to postgres;

