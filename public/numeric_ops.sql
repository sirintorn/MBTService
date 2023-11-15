create operator family numeric_ops using gin;

alter operator family numeric_ops using gin add
    function 4(numeric, numeric) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(numeric, numeric) gin_extract_query_numeric(numeric, internal, smallint, internal, internal),
    function 5(numeric, numeric) gin_compare_prefix_numeric(numeric, numeric, smallint, internal),
    function 1(numeric, numeric) gin_numeric_cmp(numeric, numeric),
    function 2(numeric, numeric) gin_extract_value_numeric(numeric, internal);

alter operator family numeric_ops using gin owner to postgres;

create operator class numeric_ops default for type numeric using gin as
    operator 1 <(numeric,numeric),
    operator 2 <=(numeric,numeric),
    operator 3 =(numeric,numeric),
    operator 4 >=(numeric,numeric),
    operator 5 >(numeric,numeric),
    function 1(numeric, numeric) gin_numeric_cmp(numeric, numeric),
    function 5(numeric, numeric) gin_compare_prefix_numeric(numeric, numeric, smallint, internal),
    function 4(numeric, numeric) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(numeric, numeric) gin_extract_query_numeric(numeric, internal, smallint, internal, internal),
    function 2(numeric, numeric) gin_extract_value_numeric(numeric, internal);

alter operator class numeric_ops using gin owner to postgres;

