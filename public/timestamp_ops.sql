create operator family timestamp_ops using gin;

alter operator family timestamp_ops using gin add
    function 5(timestamp without time zone, timestamp without time zone) gin_compare_prefix_timestamp(timestamp, timestamp, smallint, internal),
    function 4(timestamp without time zone, timestamp without time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(timestamp without time zone, timestamp without time zone) gin_extract_query_timestamp(timestamp, internal, smallint, internal, internal),
    function 2(timestamp without time zone, timestamp without time zone) gin_extract_value_timestamp(timestamp, internal);

alter operator family timestamp_ops using gin owner to postgres;

create operator class timestamp_ops default for type timestamp without time zone using gin as
    operator 4 >=(timestamp without time zone,timestamp without time zone),
    operator 3 =(timestamp without time zone,timestamp without time zone),
    operator 1 <(timestamp without time zone,timestamp without time zone),
    operator 2 <=(timestamp without time zone,timestamp without time zone),
    operator 5 >(timestamp without time zone,timestamp without time zone),
    function 4(timestamp without time zone, timestamp without time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(timestamp without time zone, timestamp without time zone) timestamp_cmp(timestamp without time zone,timestamp without time zone),
    function 5(timestamp without time zone, timestamp without time zone) gin_compare_prefix_timestamp(timestamp, timestamp, smallint, internal),
    function 2(timestamp without time zone, timestamp without time zone) gin_extract_value_timestamp(timestamp, internal),
    function 3(timestamp without time zone, timestamp without time zone) gin_extract_query_timestamp(timestamp, internal, smallint, internal, internal);

alter operator class timestamp_ops using gin owner to postgres;

