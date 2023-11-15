create operator family gist_macaddr8_ops using gist;

alter operator family gist_macaddr8_ops using gist add
    operator 6 <>(macaddr8,macaddr8),
    function 9(macaddr8, macaddr8) gbt_macad8_fetch(internal),
    function 3(macaddr8, macaddr8) gbt_macad8_compress(internal),
    function 2(macaddr8, macaddr8) gbt_macad8_union(internal, internal),
    function 1(macaddr8, macaddr8) gbt_macad8_consistent(internal, macaddr8, smallint, oid, internal),
    function 4(macaddr8, macaddr8) gbt_decompress(internal),
    function 5(macaddr8, macaddr8) gbt_macad8_penalty(internal, internal, internal),
    function 6(macaddr8, macaddr8) gbt_macad8_picksplit(internal, internal),
    function 7(macaddr8, macaddr8) gbt_macad8_same(gbtreekey16, gbtreekey16, internal);

alter operator family gist_macaddr8_ops using gist owner to postgres;

create operator class gist_macaddr8_ops default for type macaddr8 using gist as storage gbtreekey16 operator 2 <=(macaddr8,macaddr8),
	operator 3 =(macaddr8,macaddr8),
	operator 4 >=(macaddr8,macaddr8),
	operator 5 >(macaddr8,macaddr8),
	operator 1 <(macaddr8,macaddr8),
	function 7(macaddr8, macaddr8) gbt_macad8_same(gbtreekey16, gbtreekey16, internal),
	function 4(macaddr8, macaddr8) gbt_decompress(internal),
	function 3(macaddr8, macaddr8) gbt_macad8_compress(internal),
	function 2(macaddr8, macaddr8) gbt_macad8_union(internal, internal),
	function 5(macaddr8, macaddr8) gbt_macad8_penalty(internal, internal, internal),
	function 6(macaddr8, macaddr8) gbt_macad8_picksplit(internal, internal),
	function 1(macaddr8, macaddr8) gbt_macad8_consistent(internal, macaddr8, smallint, oid, internal);

alter operator class gist_macaddr8_ops using gist owner to postgres;

