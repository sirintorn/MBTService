create operator family citext_ops using btree;

alter operator family citext_ops using btree add
    operator 5 >(citext, citext),
    operator 1 <(citext, citext),
    operator 2 <=(citext, citext),
    operator 3 =(citext, citext),
    operator 4 >=(citext, citext),
    function 1(citext, citext) citext_cmp(citext, citext);

alter operator family citext_ops using btree owner to postgres;

create operator class citext_ops default for type citext using btree as
    operator 4 >=(citext, citext),
    operator 5 >(citext, citext),
    operator 1 <(citext, citext),
    operator 2 <=(citext, citext),
    operator 3 =(citext, citext),
    function 1(citext, citext) citext_cmp(citext, citext);

alter operator class citext_ops using btree owner to postgres;

create operator family citext_ops using hash;

alter operator family citext_ops using hash add
    operator 1 =(citext, citext),
    function 1(citext, citext) citext_hash(citext);

alter operator family citext_ops using hash owner to postgres;

create operator class citext_ops default for type citext using hash as
    operator 1 =(citext, citext),
    function 1(citext, citext) citext_hash(citext);

alter operator class citext_ops using hash owner to postgres;

