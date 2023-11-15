create operator family timestamptz_ops using gin;

alter operator family timestamptz_ops using gin add
    function 5(timestamp with time zone, timestamp with time zone) gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal),
    function 4(timestamp with time zone, timestamp with time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(timestamp with time zone, timestamp with time zone) gin_extract_query_timestamptz(timestamp with time zone, internal, smallint, internal, internal),
    function 2(timestamp with time zone, timestamp with time zone) gin_extract_value_timestamptz(timestamp with time zone, internal);

alter operator family timestamptz_ops using gin owner to postgres;

create operator class timestamptz_ops default for type timestamp with time zone using gin as
    operator 2 <=(timestamp with time zone,timestamp with time zone),
    operator 3 =(timestamp with time zone,timestamp with time zone),
    operator 4 >=(timestamp with time zone,timestamp with time zone),
    operator 5 >(timestamp with time zone,timestamp with time zone),
    operator 1 <(timestamp with time zone,timestamp with time zone),
    function 4(timestamp with time zone, timestamp with time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(timestamp with time zone, timestamp with time zone) gin_extract_query_timestamptz(timestamp with time zone, internal, smallint, internal, internal),
    function 2(timestamp with time zone, timestamp with time zone) gin_extract_value_timestamptz(timestamp with time zone, internal),
    function 1(timestamp with time zone, timestamp with time zone) timestamptz_cmp(timestamp with time zone,timestamp with time zone),
    function 5(timestamp with time zone, timestamp with time zone) gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal);

alter operator class timestamptz_ops using gin owner to postgres;

