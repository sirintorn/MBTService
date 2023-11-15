create operator family enum_ops using gin;

alter operator family enum_ops using gin add
    function 5(anyenum, anyenum) gin_compare_prefix_anyenum(anyenum, anyenum, smallint, internal),
    function 3(anyenum, anyenum) gin_extract_query_anyenum(anyenum, internal, smallint, internal, internal),
    function 4(anyenum, anyenum) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(anyenum, anyenum) gin_enum_cmp(anyenum, anyenum),
    function 2(anyenum, anyenum) gin_extract_value_anyenum(anyenum, internal);

alter operator family enum_ops using gin owner to postgres;

create operator class enum_ops default for type anyenum using gin as
    operator 1 <(anyenum,anyenum),
    operator 2 <=(anyenum,anyenum),
    operator 3 =(anyenum,anyenum),
    operator 4 >=(anyenum,anyenum),
    operator 5 >(anyenum,anyenum),
    function 4(anyenum, anyenum) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(anyenum, anyenum) gin_enum_cmp(anyenum, anyenum),
    function 2(anyenum, anyenum) gin_extract_value_anyenum(anyenum, internal),
    function 5(anyenum, anyenum) gin_compare_prefix_anyenum(anyenum, anyenum, smallint, internal),
    function 3(anyenum, anyenum) gin_extract_query_anyenum(anyenum, internal, smallint, internal, internal);

alter operator class enum_ops using gin owner to postgres;

