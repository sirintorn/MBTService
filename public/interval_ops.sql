create operator family interval_ops using gin;

alter operator family interval_ops using gin add
    function 5(interval, interval) gin_compare_prefix_interval(interval, interval, smallint, internal),
    function 4(interval, interval) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(interval, interval) gin_extract_query_interval(interval, internal, smallint, internal, internal),
    function 2(interval, interval) gin_extract_value_interval(interval, internal);

alter operator family interval_ops using gin owner to postgres;

create operator class interval_ops default for type interval using gin as
    operator 3 =(interval,interval),
    operator 5 >(interval,interval),
    operator 4 >=(interval,interval),
    operator 1 <(interval,interval),
    operator 2 <=(interval,interval),
    function 1(interval, interval) interval_cmp(interval,interval),
    function 3(interval, interval) gin_extract_query_interval(interval, internal, smallint, internal, internal),
    function 5(interval, interval) gin_compare_prefix_interval(interval, interval, smallint, internal),
    function 4(interval, interval) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(interval, interval) gin_extract_value_interval(interval, internal);

alter operator class interval_ops using gin owner to postgres;

