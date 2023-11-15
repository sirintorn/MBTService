create operator family gist_vbit_ops using gist;

alter operator family gist_vbit_ops using gist add
    operator 6 <>(bit varying,bit varying),
    function 9(bit varying, bit varying) gbt_var_fetch(internal),
    function 1(bit varying, bit varying) gbt_bit_consistent(internal, bit, smallint, oid, internal),
    function 2(bit varying, bit varying) gbt_bit_union(internal, internal),
    function 3(bit varying, bit varying) gbt_bit_compress(internal),
    function 4(bit varying, bit varying) gbt_var_decompress(internal),
    function 5(bit varying, bit varying) gbt_bit_penalty(internal, internal, internal),
    function 6(bit varying, bit varying) gbt_bit_picksplit(internal, internal),
    function 7(bit varying, bit varying) gbt_bit_same(gbtreekey_var, gbtreekey_var, internal);

alter operator family gist_vbit_ops using gist owner to postgres;

create operator class gist_vbit_ops default for type bit varying using gist as storage gbtreekey_var operator 2 <=(bit varying,bit varying),
	operator 3 =(bit varying,bit varying),
	operator 4 >=(bit varying,bit varying),
	operator 1 <(bit varying,bit varying),
	operator 5 >(bit varying,bit varying),
	function 7(bit varying, bit varying) gbt_bit_same(gbtreekey_var, gbtreekey_var, internal),
	function 1(bit varying, bit varying) gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit varying, bit varying) gbt_bit_union(internal, internal),
	function 6(bit varying, bit varying) gbt_bit_picksplit(internal, internal),
	function 3(bit varying, bit varying) gbt_bit_compress(internal),
	function 4(bit varying, bit varying) gbt_var_decompress(internal),
	function 5(bit varying, bit varying) gbt_bit_penalty(internal, internal, internal);

alter operator class gist_vbit_ops using gist owner to postgres;

