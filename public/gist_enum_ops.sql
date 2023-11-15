create operator family gist_enum_ops using gist;

alter operator family gist_enum_ops using gist add
    operator 6 <>(anyenum,anyenum),
    function 9(anyenum, anyenum) gbt_enum_fetch(internal),
    function 5(anyenum, anyenum) gbt_enum_penalty(internal, internal, internal),
    function 1(anyenum, anyenum) gbt_enum_consistent(internal, anyenum, smallint, oid, internal),
    function 7(anyenum, anyenum) gbt_enum_same(gbtreekey8, gbtreekey8, internal),
    function 2(anyenum, anyenum) gbt_enum_union(internal, internal),
    function 6(anyenum, anyenum) gbt_enum_picksplit(internal, internal),
    function 3(anyenum, anyenum) gbt_enum_compress(internal),
    function 4(anyenum, anyenum) gbt_decompress(internal);

alter operator family gist_enum_ops using gist owner to postgres;

create operator class gist_enum_ops default for type anyenum using gist as storage gbtreekey8 operator 4 >=(anyenum,anyenum),
	operator 5 >(anyenum,anyenum),
	operator 2 <=(anyenum,anyenum),
	operator 1 <(anyenum,anyenum),
	operator 3 =(anyenum,anyenum),
	function 7(anyenum, anyenum) gbt_enum_same(gbtreekey8, gbtreekey8, internal),
	function 6(anyenum, anyenum) gbt_enum_picksplit(internal, internal),
	function 5(anyenum, anyenum) gbt_enum_penalty(internal, internal, internal),
	function 4(anyenum, anyenum) gbt_decompress(internal),
	function 3(anyenum, anyenum) gbt_enum_compress(internal),
	function 2(anyenum, anyenum) gbt_enum_union(internal, internal),
	function 1(anyenum, anyenum) gbt_enum_consistent(internal, anyenum, smallint, oid, internal);

alter operator class gist_enum_ops using gist owner to postgres;

