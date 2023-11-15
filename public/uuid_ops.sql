create operator family uuid_ops using gin;

alter operator family uuid_ops using gin add
    function 5(uuid, uuid) gin_compare_prefix_uuid(uuid, uuid, smallint, internal),
    function 2(uuid, uuid) gin_extract_value_uuid(uuid, internal),
    function 4(uuid, uuid) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(uuid, uuid) gin_extract_query_uuid(uuid, internal, smallint, internal, internal);

alter operator family uuid_ops using gin owner to postgres;

create operator class uuid_ops default for type uuid using gin as
    operator 1 <(uuid,uuid),
    operator 2 <=(uuid,uuid),
    operator 3 =(uuid,uuid),
    operator 4 >=(uuid,uuid),
    operator 5 >(uuid,uuid),
    function 5(uuid, uuid) gin_compare_prefix_uuid(uuid, uuid, smallint, internal),
    function 4(uuid, uuid) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(uuid, uuid) gin_extract_value_uuid(uuid, internal),
    function 1(uuid, uuid) uuid_cmp(uuid,uuid),
    function 3(uuid, uuid) gin_extract_query_uuid(uuid, internal, smallint, internal, internal);

alter operator class uuid_ops using gin owner to postgres;

