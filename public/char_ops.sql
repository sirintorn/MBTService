create operator family char_ops using gin;

alter operator family char_ops using gin add
    function 2("char", "char") gin_extract_value_char("char", internal),
    function 3("char", "char") gin_extract_query_char("char", internal, smallint, internal, internal),
    function 4("char", "char") gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5("char", "char") gin_compare_prefix_char("char", "char", smallint, internal);

alter operator family char_ops using gin owner to postgres;

create operator class char_ops default for type "char" using gin as
    operator 3 =("char","char"),
    operator 2 <=("char","char"),
    operator 1 <("char","char"),
    operator 4 >=("char","char"),
    operator 5 >("char","char"),
    function 2("char", "char") gin_extract_value_char("char", internal),
    function 5("char", "char") gin_compare_prefix_char("char", "char", smallint, internal),
    function 1("char", "char") btcharcmp("char","char"),
    function 4("char", "char") gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3("char", "char") gin_extract_query_char("char", internal, smallint, internal, internal);

alter operator class char_ops using gin owner to postgres;

