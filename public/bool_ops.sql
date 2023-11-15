create operator family bool_ops using gin;

alter operator family bool_ops using gin add
    function 2(boolean, boolean) gin_extract_value_bool(boolean, internal),
    function 3(boolean, boolean) gin_extract_query_bool(boolean, internal, smallint, internal, internal),
    function 4(boolean, boolean) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(boolean, boolean) gin_compare_prefix_bool(boolean, boolean, smallint, internal);

alter operator family bool_ops using gin owner to postgres;

create operator class bool_ops default for type boolean using gin as
    operator 1 <(boolean,boolean),
    operator 2 <=(boolean,boolean),
    operator 3 =(boolean,boolean),
    operator 4 >=(boolean,boolean),
    operator 5 >(boolean,boolean),
    function 1(boolean, boolean) btboolcmp(boolean,boolean),
    function 5(boolean, boolean) gin_compare_prefix_bool(boolean, boolean, smallint, internal),
    function 4(boolean, boolean) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(boolean, boolean) gin_extract_query_bool(boolean, internal, smallint, internal, internal),
    function 2(boolean, boolean) gin_extract_value_bool(boolean, internal);

alter operator class bool_ops using gin owner to postgres;

