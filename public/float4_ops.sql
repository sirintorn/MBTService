create operator family float4_ops using gin;

alter operator family float4_ops using gin add
    function 2(real, real) gin_extract_value_float4(real, internal),
    function 4(real, real) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(real, real) gin_extract_query_float4(real, internal, smallint, internal, internal),
    function 5(real, real) gin_compare_prefix_float4(real, real, smallint, internal);

alter operator family float4_ops using gin owner to postgres;

create operator class float4_ops default for type real using gin as
    operator 3 =(real,real),
    operator 2 <=(real,real),
    operator 1 <(real,real),
    operator 5 >(real,real),
    operator 4 >=(real,real),
    function 3(real, real) gin_extract_query_float4(real, internal, smallint, internal, internal),
    function 2(real, real) gin_extract_value_float4(real, internal),
    function 1(real, real) btfloat4cmp(real,real),
    function 5(real, real) gin_compare_prefix_float4(real, real, smallint, internal),
    function 4(real, real) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator class float4_ops using gin owner to postgres;

