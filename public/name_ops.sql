create operator family name_ops using gin;

alter operator family name_ops using gin add
    function 4(name, name) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(name, name) gin_extract_query_name(name, internal, smallint, internal, internal),
    function 2(name, name) gin_extract_value_name(name, internal),
    function 5(name, name) gin_compare_prefix_name(name, name, smallint, internal);

alter operator family name_ops using gin owner to postgres;

create operator class name_ops default for type name using gin as
    operator 1 <(name,name),
    operator 2 <=(name,name),
    operator 3 =(name,name),
    operator 4 >=(name,name),
    operator 5 >(name,name),
    function 5(name, name) gin_compare_prefix_name(name, name, smallint, internal),
    function 4(name, name) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(name, name) btnamecmp(name,name),
    function 3(name, name) gin_extract_query_name(name, internal, smallint, internal, internal),
    function 2(name, name) gin_extract_value_name(name, internal);

alter operator class name_ops using gin owner to postgres;

