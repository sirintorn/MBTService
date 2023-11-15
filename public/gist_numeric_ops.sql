create operator family gist_numeric_ops using gist;

alter operator family gist_numeric_ops using gist add
    operator 6 <>(numeric,numeric),
    function 2(numeric, numeric) gbt_numeric_union(internal, internal),
    function 4(numeric, numeric) gbt_var_decompress(internal),
    function 9(numeric, numeric) gbt_var_fetch(internal),
    function 7(numeric, numeric) gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal),
    function 3(numeric, numeric) gbt_numeric_compress(internal),
    function 6(numeric, numeric) gbt_numeric_picksplit(internal, internal),
    function 1(numeric, numeric) gbt_numeric_consistent(internal, numeric, smallint, oid, internal),
    function 5(numeric, numeric) gbt_numeric_penalty(internal, internal, internal);

alter operator family gist_numeric_ops using gist owner to postgres;

create operator class gist_numeric_ops default for type numeric using gist as storage gbtreekey_var operator 4 >=(numeric,numeric),
	operator 1 <(numeric,numeric),
	operator 2 <=(numeric,numeric),
	operator 3 =(numeric,numeric),
	operator 5 >(numeric,numeric),
	function 7(numeric, numeric) gbt_numeric_same(gbtreekey_var, gbtreekey_var, internal),
	function 1(numeric, numeric) gbt_numeric_consistent(internal, numeric, smallint, oid, internal),
	function 2(numeric, numeric) gbt_numeric_union(internal, internal),
	function 3(numeric, numeric) gbt_numeric_compress(internal),
	function 4(numeric, numeric) gbt_var_decompress(internal),
	function 5(numeric, numeric) gbt_numeric_penalty(internal, internal, internal),
	function 6(numeric, numeric) gbt_numeric_picksplit(internal, internal);

alter operator class gist_numeric_ops using gist owner to postgres;

