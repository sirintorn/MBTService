create operator family gist_cidr_ops using gist;

alter operator family gist_cidr_ops using gist add
    operator 6 <>(inet,inet),
    function 2(cidr, cidr) gbt_inet_union(internal, internal),
    function 7(cidr, cidr) gbt_inet_same(gbtreekey16, gbtreekey16, internal),
    function 1(cidr, cidr) gbt_inet_consistent(internal, inet, smallint, oid, internal),
    function 5(cidr, cidr) gbt_inet_penalty(internal, internal, internal),
    function 4(cidr, cidr) gbt_decompress(internal),
    function 6(cidr, cidr) gbt_inet_picksplit(internal, internal),
    function 3(cidr, cidr) gbt_inet_compress(internal);

alter operator family gist_cidr_ops using gist owner to postgres;

create operator class gist_cidr_ops default for type cidr using gist as storage gbtreekey16 operator 3 =(inet,inet),
	operator 4 >=(inet,inet),
	operator 5 >(inet,inet),
	operator 1 <(inet,inet),
	operator 2 <=(inet,inet),
	function 3(cidr, cidr) gbt_inet_compress(internal),
	function 2(cidr, cidr) gbt_inet_union(internal, internal),
	function 1(cidr, cidr) gbt_inet_consistent(internal, inet, smallint, oid, internal),
	function 7(cidr, cidr) gbt_inet_same(gbtreekey16, gbtreekey16, internal),
	function 5(cidr, cidr) gbt_inet_penalty(internal, internal, internal),
	function 6(cidr, cidr) gbt_inet_picksplit(internal, internal),
	function 4(cidr, cidr) gbt_decompress(internal);

alter operator class gist_cidr_ops using gist owner to postgres;

