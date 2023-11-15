create operator family gist_inet_ops using gist;

alter operator family gist_inet_ops using gist add
    operator 6 <>(inet,inet),
    function 2(inet, inet) gbt_inet_union(internal, internal),
    function 7(inet, inet) gbt_inet_same(gbtreekey16, gbtreekey16, internal),
    function 6(inet, inet) gbt_inet_picksplit(internal, internal),
    function 5(inet, inet) gbt_inet_penalty(internal, internal, internal),
    function 4(inet, inet) gbt_decompress(internal),
    function 3(inet, inet) gbt_inet_compress(internal),
    function 1(inet, inet) gbt_inet_consistent(internal, inet, smallint, oid, internal);

alter operator family gist_inet_ops using gist owner to postgres;

create operator class gist_inet_ops default for type inet using gist as storage gbtreekey16 operator 3 =(inet,inet),
	operator 4 >=(inet,inet),
	operator 2 <=(inet,inet),
	operator 1 <(inet,inet),
	operator 5 >(inet,inet),
	function 4(inet, inet) gbt_decompress(internal),
	function 1(inet, inet) gbt_inet_consistent(internal, inet, smallint, oid, internal),
	function 2(inet, inet) gbt_inet_union(internal, internal),
	function 3(inet, inet) gbt_inet_compress(internal),
	function 5(inet, inet) gbt_inet_penalty(internal, internal, internal),
	function 6(inet, inet) gbt_inet_picksplit(internal, internal),
	function 7(inet, inet) gbt_inet_same(gbtreekey16, gbtreekey16, internal);

alter operator class gist_inet_ops using gist owner to postgres;

