create operator family gist_macaddr_ops using gist;

alter operator family gist_macaddr_ops using gist add
    operator 6 <>(macaddr,macaddr),
    function 2(macaddr, macaddr) gbt_macad_union(internal, internal),
    function 1(macaddr, macaddr) gbt_macad_consistent(internal, macaddr, smallint, oid, internal),
    function 3(macaddr, macaddr) gbt_macad_compress(internal),
    function 4(macaddr, macaddr) gbt_decompress(internal),
    function 5(macaddr, macaddr) gbt_macad_penalty(internal, internal, internal),
    function 6(macaddr, macaddr) gbt_macad_picksplit(internal, internal),
    function 7(macaddr, macaddr) gbt_macad_same(gbtreekey16, gbtreekey16, internal),
    function 9(macaddr, macaddr) gbt_macad_fetch(internal);

alter operator family gist_macaddr_ops using gist owner to postgres;

create operator class gist_macaddr_ops default for type macaddr using gist as storage gbtreekey16 operator 1 <(macaddr,macaddr),
	operator 3 =(macaddr,macaddr),
	operator 4 >=(macaddr,macaddr),
	operator 5 >(macaddr,macaddr),
	operator 2 <=(macaddr,macaddr),
	function 6(macaddr, macaddr) gbt_macad_picksplit(internal, internal),
	function 7(macaddr, macaddr) gbt_macad_same(gbtreekey16, gbtreekey16, internal),
	function 3(macaddr, macaddr) gbt_macad_compress(internal),
	function 2(macaddr, macaddr) gbt_macad_union(internal, internal),
	function 4(macaddr, macaddr) gbt_decompress(internal),
	function 5(macaddr, macaddr) gbt_macad_penalty(internal, internal, internal),
	function 1(macaddr, macaddr) gbt_macad_consistent(internal, macaddr, smallint, oid, internal);

alter operator class gist_macaddr_ops using gist owner to postgres;

