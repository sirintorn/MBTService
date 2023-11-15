create operator family int4_ops using gin;

alter operator family int4_ops using gin add
    function 3(integer, integer) gin_extract_query_int4(integer, internal, smallint, internal, internal),
    function 2(integer, integer) gin_extract_value_int4(integer, internal),
    function 4(integer, integer) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(integer, integer) gin_compare_prefix_int4(integer, integer, smallint, internal);

alter operator family int4_ops using gin owner to postgres;

create operator class int4_ops default for type integer using gin as
    operator 1 <(integer,integer),
    operator 3 =(integer,integer),
    operator 4 >=(integer,integer),
    operator 5 >(integer,integer),
    operator 2 <=(integer,integer),
    function 3(integer, integer) gin_extract_query_int4(integer, internal, smallint, internal, internal),
    function 5(integer, integer) gin_compare_prefix_int4(integer, integer, smallint, internal),
    function 4(integer, integer) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(integer, integer) gin_extract_value_int4(integer, internal),
    function 1(integer, integer) btint4cmp(integer,integer);

alter operator class int4_ops using gin owner to postgres;

