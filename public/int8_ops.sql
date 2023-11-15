create operator family int8_ops using gin;

alter operator family int8_ops using gin add
    function 5(bigint, bigint) gin_compare_prefix_int8(bigint, bigint, smallint, internal),
    function 2(bigint, bigint) gin_extract_value_int8(bigint, internal),
    function 3(bigint, bigint) gin_extract_query_int8(bigint, internal, smallint, internal, internal),
    function 4(bigint, bigint) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator family int8_ops using gin owner to postgres;

create operator class int8_ops default for type bigint using gin as
    operator 4 >=(bigint,bigint),
    operator 3 =(bigint,bigint),
    operator 2 <=(bigint,bigint),
    operator 5 >(bigint,bigint),
    operator 1 <(bigint,bigint),
    function 4(bigint, bigint) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(bigint, bigint) gin_extract_query_int8(bigint, internal, smallint, internal, internal),
    function 2(bigint, bigint) gin_extract_value_int8(bigint, internal),
    function 5(bigint, bigint) gin_compare_prefix_int8(bigint, bigint, smallint, internal),
    function 1(bigint, bigint) btint8cmp(bigint,bigint);

alter operator class int8_ops using gin owner to postgres;

