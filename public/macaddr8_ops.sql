create operator family macaddr8_ops using gin;

alter operator family macaddr8_ops using gin add
    function 2(macaddr8, macaddr8) gin_extract_value_macaddr8(macaddr8, internal),
    function 3(macaddr8, macaddr8) gin_extract_query_macaddr8(macaddr8, internal, smallint, internal, internal),
    function 5(macaddr8, macaddr8) gin_compare_prefix_macaddr8(macaddr8, macaddr8, smallint, internal),
    function 4(macaddr8, macaddr8) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator family macaddr8_ops using gin owner to postgres;

create operator class macaddr8_ops default for type macaddr8 using gin as
    operator 1 <(macaddr8,macaddr8),
    operator 2 <=(macaddr8,macaddr8),
    operator 3 =(macaddr8,macaddr8),
    operator 4 >=(macaddr8,macaddr8),
    operator 5 >(macaddr8,macaddr8),
    function 3(macaddr8, macaddr8) gin_extract_query_macaddr8(macaddr8, internal, smallint, internal, internal),
    function 4(macaddr8, macaddr8) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(macaddr8, macaddr8) gin_extract_value_macaddr8(macaddr8, internal),
    function 5(macaddr8, macaddr8) gin_compare_prefix_macaddr8(macaddr8, macaddr8, smallint, internal),
    function 1(macaddr8, macaddr8) macaddr8_cmp(macaddr8,macaddr8);

alter operator class macaddr8_ops using gin owner to postgres;

