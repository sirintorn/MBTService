create operator family timetz_ops using gin;

alter operator family timetz_ops using gin add
    function 2(time with time zone, time with time zone) gin_extract_value_timetz(time with time zone, internal),
    function 5(time with time zone, time with time zone) gin_compare_prefix_timetz(time with time zone, time with time zone, smallint, internal),
    function 4(time with time zone, time with time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(time with time zone, time with time zone) gin_extract_query_timetz(time with time zone, internal, smallint, internal, internal);

alter operator family timetz_ops using gin owner to postgres;

create operator class timetz_ops default for type time with time zone using gin as
    operator 3 =(time with time zone,time with time zone),
    operator 1 <(time with time zone,time with time zone),
    operator 2 <=(time with time zone,time with time zone),
    operator 4 >=(time with time zone,time with time zone),
    operator 5 >(time with time zone,time with time zone),
    function 5(time with time zone, time with time zone) gin_compare_prefix_timetz(time with time zone, time with time zone, smallint, internal),
    function 1(time with time zone, time with time zone) timetz_cmp(time with time zone,time with time zone),
    function 2(time with time zone, time with time zone) gin_extract_value_timetz(time with time zone, internal),
    function 3(time with time zone, time with time zone) gin_extract_query_timetz(time with time zone, internal, smallint, internal, internal),
    function 4(time with time zone, time with time zone) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator class timetz_ops using gin owner to postgres;

