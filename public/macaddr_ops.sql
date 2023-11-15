create operator family macaddr_ops using gin;

alter operator family macaddr_ops using gin add
    function 4(macaddr, macaddr) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(macaddr, macaddr) gin_compare_prefix_macaddr(macaddr, macaddr, smallint, internal),
    function 3(macaddr, macaddr) gin_extract_query_macaddr(macaddr, internal, smallint, internal, internal),
    function 2(macaddr, macaddr) gin_extract_value_macaddr(macaddr, internal);

alter operator family macaddr_ops using gin owner to postgres;

create operator class macaddr_ops default for type macaddr using gin as
    operator 3 =(macaddr,macaddr),
    operator 1 <(macaddr,macaddr),
    operator 2 <=(macaddr,macaddr),
    operator 4 >=(macaddr,macaddr),
    operator 5 >(macaddr,macaddr),
    function 5(macaddr, macaddr) gin_compare_prefix_macaddr(macaddr, macaddr, smallint, internal),
    function 4(macaddr, macaddr) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(macaddr, macaddr) gin_extract_query_macaddr(macaddr, internal, smallint, internal, internal),
    function 1(macaddr, macaddr) macaddr_cmp(macaddr,macaddr),
    function 2(macaddr, macaddr) gin_extract_value_macaddr(macaddr, internal);

alter operator class macaddr_ops using gin owner to postgres;

