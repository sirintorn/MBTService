create operator family varbit_ops using gin;

alter operator family varbit_ops using gin add
    function 2(bit varying, bit varying) gin_extract_value_varbit(bit varying, internal),
    function 4(bit varying, bit varying) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(bit varying, bit varying) gin_extract_query_varbit(bit varying, internal, smallint, internal, internal),
    function 5(bit varying, bit varying) gin_compare_prefix_varbit(bit varying, bit varying, smallint, internal);

alter operator family varbit_ops using gin owner to postgres;

create operator class varbit_ops default for type bit varying using gin as
    operator 1 <(bit varying,bit varying),
    operator 2 <=(bit varying,bit varying),
    operator 3 =(bit varying,bit varying),
    operator 4 >=(bit varying,bit varying),
    operator 5 >(bit varying,bit varying),
    function 3(bit varying, bit varying) gin_extract_query_varbit(bit varying, internal, smallint, internal, internal),
    function 1(bit varying, bit varying) varbitcmp(bit varying,bit varying),
    function 2(bit varying, bit varying) gin_extract_value_varbit(bit varying, internal),
    function 4(bit varying, bit varying) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(bit varying, bit varying) gin_compare_prefix_varbit(bit varying, bit varying, smallint, internal);

alter operator class varbit_ops using gin owner to postgres;

