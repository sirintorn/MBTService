create operator family gist_date_ops using gist;

alter operator family gist_date_ops using gist add
    operator 15 <->(date, date) for order by integer_ops,
    operator 6 <>(date,date),
    function 9(date, date) gbt_date_fetch(internal),
    function 8(date, date) gbt_date_distance(internal, date, smallint, oid, internal),
    function 7(date, date) gbt_date_same(gbtreekey8, gbtreekey8, internal),
    function 6(date, date) gbt_date_picksplit(internal, internal),
    function 5(date, date) gbt_date_penalty(internal, internal, internal),
    function 4(date, date) gbt_decompress(internal),
    function 3(date, date) gbt_date_compress(internal),
    function 2(date, date) gbt_date_union(internal, internal),
    function 1(date, date) gbt_date_consistent(internal, date, smallint, oid, internal);

alter operator family gist_date_ops using gist owner to postgres;

create operator class gist_date_ops default for type date using gist as storage gbtreekey8 operator 5 >(date,date),
	operator 4 >=(date,date),
	operator 3 =(date,date),
	operator 2 <=(date,date),
	operator 1 <(date,date),
	function 1(date, date) gbt_date_consistent(internal, date, smallint, oid, internal),
	function 6(date, date) gbt_date_picksplit(internal, internal),
	function 3(date, date) gbt_date_compress(internal),
	function 4(date, date) gbt_decompress(internal),
	function 2(date, date) gbt_date_union(internal, internal),
	function 5(date, date) gbt_date_penalty(internal, internal, internal),
	function 7(date, date) gbt_date_same(gbtreekey8, gbtreekey8, internal);

alter operator class gist_date_ops using gist owner to postgres;

