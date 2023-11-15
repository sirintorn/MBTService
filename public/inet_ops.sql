create operator family inet_ops using gin;

alter operator family inet_ops using gin add
    function 4(inet, inet) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(inet, inet) gin_extract_value_inet(inet, internal),
    function 3(inet, inet) gin_extract_query_inet(inet, internal, smallint, internal, internal),
    function 5(inet, inet) gin_compare_prefix_inet(inet, inet, smallint, internal);

alter operator family inet_ops using gin owner to postgres;

create operator class inet_ops default for type inet using gin as
    operator 1 <(inet,inet),
    operator 5 >(inet,inet),
    operator 4 >=(inet,inet),
    operator 2 <=(inet,inet),
    operator 3 =(inet,inet),
    function 5(inet, inet) gin_compare_prefix_inet(inet, inet, smallint, internal),
    function 2(inet, inet) gin_extract_value_inet(inet, internal),
    function 3(inet, inet) gin_extract_query_inet(inet, internal, smallint, internal, internal),
    function 4(inet, inet) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(inet, inet) network_cmp(inet,inet);

alter operator class inet_ops using gin owner to postgres;

