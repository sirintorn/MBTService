create operator family int2_ops using gin;

alter operator family int2_ops using gin add
    function 5(smallint, smallint) gin_compare_prefix_int2(smallint, smallint, smallint, internal),
    function 2(smallint, smallint) gin_extract_value_int2(smallint, internal),
    function 3(smallint, smallint) gin_extract_query_int2(smallint, internal, smallint, internal, internal),
    function 4(smallint, smallint) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator family int2_ops using gin owner to postgres;

create operator class int2_ops default for type smallint using gin as
    operator 1 <(smallint,smallint),
    operator 2 <=(smallint,smallint),
    operator 3 =(smallint,smallint),
    operator 4 >=(smallint,smallint),
    operator 5 >(smallint,smallint),
    function 5(smallint, smallint) gin_compare_prefix_int2(smallint, smallint, smallint, internal),
    function 4(smallint, smallint) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(smallint, smallint) btint2cmp(smallint,smallint),
    function 2(smallint, smallint) gin_extract_value_int2(smallint, internal),
    function 3(smallint, smallint) gin_extract_query_int2(smallint, internal, smallint, internal, internal);

alter operator class int2_ops using gin owner to postgres;

