create operator family bytea_ops using gin;

alter operator family bytea_ops using gin add
    function 2(bytea, bytea) gin_extract_value_bytea(bytea, internal),
    function 3(bytea, bytea) gin_extract_query_bytea(bytea, internal, smallint, internal, internal),
    function 4(bytea, bytea) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(bytea, bytea) gin_compare_prefix_bytea(bytea, bytea, smallint, internal);

alter operator family bytea_ops using gin owner to postgres;

create operator class bytea_ops default for type bytea using gin as
    operator 4 >=(bytea,bytea),
    operator 1 <(bytea,bytea),
    operator 5 >(bytea,bytea),
    operator 2 <=(bytea,bytea),
    operator 3 =(bytea,bytea),
    function 1(bytea, bytea) byteacmp(bytea,bytea),
    function 2(bytea, bytea) gin_extract_value_bytea(bytea, internal),
    function 5(bytea, bytea) gin_compare_prefix_bytea(bytea, bytea, smallint, internal),
    function 3(bytea, bytea) gin_extract_query_bytea(bytea, internal, smallint, internal, internal),
    function 4(bytea, bytea) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator class bytea_ops using gin owner to postgres;

