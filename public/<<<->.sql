create operator <<<-> (procedure = strict_word_similarity_dist_op, leftarg = text, rightarg = text, commutator = <->>>);

alter operator <<<->(text, text) owner to postgres;

