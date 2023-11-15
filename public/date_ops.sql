create operator family date_ops using gin;

alter operator family date_ops using gin add
    function 4(date, date) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(date, date) gin_extract_value_date(date, internal),
    function 5(date, date) gin_compare_prefix_date(date, date, smallint, internal),
    function 3(date, date) gin_extract_query_date(date, internal, smallint, internal, internal);

alter operator family date_ops using gin owner to postgres;

create operator class date_ops default for type date using gin as
    operator 3 =(date,date),
    operator 1 <(date,date),
    operator 2 <=(date,date),
    operator 5 >(date,date),
    operator 4 >=(date,date),
    function 4(date, date) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(date, date) gin_extract_value_date(date, internal),
    function 1(date, date) date_cmp(date,date),
    function 5(date, date) gin_compare_prefix_date(date, date, smallint, internal),
    function 3(date, date) gin_extract_query_date(date, internal, smallint, internal, internal);

alter operator class date_ops using gin owner to postgres;

