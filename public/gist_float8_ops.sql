create operator family gist_float8_ops using gist;

alter operator family gist_float8_ops using gist add
    operator 6 <>(double precision,double precision),
    operator 15 <->(double precision, double precision) for order by float_ops,
    function 8(double precision, double precision) gbt_float8_distance(internal, double precision, smallint, oid, internal),
    function 9(double precision, double precision) gbt_float8_fetch(internal),
    function 7(double precision, double precision) gbt_float8_same(gbtreekey16, gbtreekey16, internal),
    function 6(double precision, double precision) gbt_float8_picksplit(internal, internal),
    function 5(double precision, double precision) gbt_float8_penalty(internal, internal, internal),
    function 4(double precision, double precision) gbt_decompress(internal),
    function 3(double precision, double precision) gbt_float8_compress(internal),
    function 2(double precision, double precision) gbt_float8_union(internal, internal),
    function 1(double precision, double precision) gbt_float8_consistent(internal, double precision, smallint, oid, internal);

alter operator family gist_float8_ops using gist owner to postgres;

create operator class gist_float8_ops default for type double precision using gist as storage gbtreekey16 operator 3 =(double precision,double precision),
	operator 5 >(double precision,double precision),
	operator 4 >=(double precision,double precision),
	operator 2 <=(double precision,double precision),
	operator 1 <(double precision,double precision),
	function 3(double precision, double precision) gbt_float8_compress(internal),
	function 4(double precision, double precision) gbt_decompress(internal),
	function 5(double precision, double precision) gbt_float8_penalty(internal, internal, internal),
	function 2(double precision, double precision) gbt_float8_union(internal, internal),
	function 7(double precision, double precision) gbt_float8_same(gbtreekey16, gbtreekey16, internal),
	function 1(double precision, double precision) gbt_float8_consistent(internal, double precision, smallint, oid, internal),
	function 6(double precision, double precision) gbt_float8_picksplit(internal, internal);

alter operator class gist_float8_ops using gist owner to postgres;

