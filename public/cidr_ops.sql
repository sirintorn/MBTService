create operator family cidr_ops using gin;

alter operator family cidr_ops using gin add
    function 4(cidr, cidr) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(cidr, cidr) gin_extract_query_cidr(cidr, internal, smallint, internal, internal),
    function 5(cidr, cidr) gin_compare_prefix_cidr(cidr, cidr, smallint, internal),
    function 2(cidr, cidr) gin_extract_value_cidr(cidr, internal);

alter operator family cidr_ops using gin owner to postgres;

create operator class cidr_ops default for type cidr using gin as
    operator 4 >=(inet,inet),
    operator 2 <=(inet,inet),
    operator 3 =(inet,inet),
    operator 5 >(inet,inet),
    operator 1 <(inet,inet),
    function 5(cidr, cidr) gin_compare_prefix_cidr(cidr, cidr, smallint, internal),
    function 4(cidr, cidr) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(cidr, cidr) gin_extract_query_cidr(cidr, internal, smallint, internal, internal),
    function 2(cidr, cidr) gin_extract_value_cidr(cidr, internal),
    function 1(cidr, cidr) network_cmp(inet,inet);

alter operator class cidr_ops using gin owner to postgres;

