create operator family oid_ops using gin;

alter operator family oid_ops using gin add
    function 5(oid, oid) gin_compare_prefix_oid(oid, oid, smallint, internal),
    function 4(oid, oid) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(oid, oid) gin_extract_value_oid(oid, internal),
    function 3(oid, oid) gin_extract_query_oid(oid, internal, smallint, internal, internal);

alter operator family oid_ops using gin owner to postgres;

create operator class oid_ops default for type oid using gin as
    operator 4 >=(oid,oid),
    operator 3 =(oid,oid),
    operator 2 <=(oid,oid),
    operator 1 <(oid,oid),
    operator 5 >(oid,oid),
    function 2(oid, oid) gin_extract_value_oid(oid, internal),
    function 3(oid, oid) gin_extract_query_oid(oid, internal, smallint, internal, internal),
    function 4(oid, oid) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(oid, oid) gin_compare_prefix_oid(oid, oid, smallint, internal),
    function 1(oid, oid) btoidcmp(oid,oid);

alter operator class oid_ops using gin owner to postgres;

