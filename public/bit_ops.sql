create operator family bit_ops using gin;

alter operator family bit_ops using gin add
    function 5(bit, bit) gin_compare_prefix_bit(bit, bit, smallint, internal),
    function 2(bit, bit) gin_extract_value_bit(bit, internal),
    function 3(bit, bit) gin_extract_query_bit(bit, internal, smallint, internal, internal),
    function 4(bit, bit) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator family bit_ops using gin owner to postgres;

create operator class bit_ops default for type bit using gin as
    operator 4 >=(bit,bit),
    operator 5 >(bit,bit),
    operator 3 =(bit,bit),
    operator 2 <=(bit,bit),
    operator 1 <(bit,bit),
    function 3(bit, bit) gin_extract_query_bit(bit, internal, smallint, internal, internal),
    function 5(bit, bit) gin_compare_prefix_bit(bit, bit, smallint, internal),
    function 2(bit, bit) gin_extract_value_bit(bit, internal),
    function 1(bit, bit) bitcmp(bit,bit),
    function 4(bit, bit) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator class bit_ops using gin owner to postgres;

