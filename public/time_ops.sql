create operator family time_ops using gin;

alter operator family time_ops using gin add
    function 3(time without time zone, time without time zone) gin_extract_query_time(time, internal, smallint, internal, internal),
    function 2(time without time zone, time without time zone) gin_extract_value_time(time, internal),
    function 4(time without time zone, time without time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(time without time zone, time without time zone) gin_compare_prefix_time(time, time, smallint, internal);

alter operator family time_ops using gin owner to postgres;

create operator class time_ops default for type time without time zone using gin as
    operator 5 >(time without time zone,time without time zone),
    operator 3 =(time without time zone,time without time zone),
    operator 1 <(time without time zone,time without time zone),
    operator 4 >=(time without time zone,time without time zone),
    operator 2 <=(time without time zone,time without time zone),
    function 5(time without time zone, time without time zone) gin_compare_prefix_time(time, time, smallint, internal),
    function 3(time without time zone, time without time zone) gin_extract_query_time(time, internal, smallint, internal, internal),
    function 2(time without time zone, time without time zone) gin_extract_value_time(time, internal),
    function 1(time without time zone, time without time zone) time_cmp(time without time zone,time without time zone),
    function 4(time without time zone, time without time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator class time_ops using gin owner to postgres;

