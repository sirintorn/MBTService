create operator family float8_ops using gin;

alter operator family float8_ops using gin add
    function 4(double precision, double precision) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(double precision, double precision) gin_compare_prefix_float8(double precision, double precision, smallint, internal),
    function 2(double precision, double precision) gin_extract_value_float8(double precision, internal),
    function 3(double precision, double precision) gin_extract_query_float8(double precision, internal, smallint, internal, internal);

alter operator family float8_ops using gin owner to postgres;

create operator class float8_ops default for type double precision using gin as
    operator 5 >(double precision,double precision),
    operator 4 >=(double precision,double precision),
    operator 3 =(double precision,double precision),
    operator 2 <=(double precision,double precision),
    operator 1 <(double precision,double precision),
    function 4(double precision, double precision) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(double precision, double precision) btfloat8cmp(double precision,double precision),
    function 2(double precision, double precision) gin_extract_value_float8(double precision, internal),
    function 3(double precision, double precision) gin_extract_query_float8(double precision, internal, smallint, internal, internal),
    function 5(double precision, double precision) gin_compare_prefix_float8(double precision, double precision, smallint, internal);

alter operator class float8_ops using gin owner to postgres;

