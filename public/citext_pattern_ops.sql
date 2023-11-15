create operator family citext_pattern_ops using btree;

alter operator family citext_pattern_ops using btree add
    operator 1 ~<~(citext, citext),
    operator 2 ~<=~(citext, citext),
    operator 3 =(citext, citext),
    operator 4 ~>=~(citext, citext),
    operator 5 ~>~(citext, citext),
    function 1(citext, citext) citext_pattern_cmp(citext, citext);

alter operator family citext_pattern_ops using btree owner to postgres;

create operator class citext_pattern_ops for type citext using btree as
    operator 3 =(citext, citext),
    operator 5 ~>~(citext, citext),
    operator 1 ~<~(citext, citext),
    operator 2 ~<=~(citext, citext),
    operator 4 ~>=~(citext, citext),
    function 1(citext, citext) citext_pattern_cmp(citext, citext);

alter operator class citext_pattern_ops using btree owner to postgres;

