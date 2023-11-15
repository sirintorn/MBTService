create operator family gist_bit_ops using gist;

alter operator family gist_bit_ops using gist add
    operator 6 <>(bit,bit),
    function 7(bit, bit) gbt_bit_same(gbtreekey_var, gbtreekey_var, internal),
    function 9(bit, bit) gbt_var_fetch(internal),
    function 6(bit, bit) gbt_bit_picksplit(internal, internal),
    function 5(bit, bit) gbt_bit_penalty(internal, internal, internal),
    function 4(bit, bit) gbt_var_decompress(internal),
    function 3(bit, bit) gbt_bit_compress(internal),
    function 2(bit, bit) gbt_bit_union(internal, internal),
    function 1(bit, bit) gbt_bit_consistent(internal, bit, smallint, oid, internal);

alter operator family gist_bit_ops using gist owner to postgres;

create operator class gist_bit_ops default for type bit using gist as storage gbtreekey_var operator 2 <=(bit,bit),
	operator 5 >(bit,bit),
	operator 4 >=(bit,bit),
	operator 3 =(bit,bit),
	operator 1 <(bit,bit),
	function 6(bit, bit) gbt_bit_picksplit(internal, internal),
	function 1(bit, bit) gbt_bit_consistent(internal, bit, smallint, oid, internal),
	function 2(bit, bit) gbt_bit_union(internal, internal),
	function 3(bit, bit) gbt_bit_compress(internal),
	function 4(bit, bit) gbt_var_decompress(internal),
	function 5(bit, bit) gbt_bit_penalty(internal, internal, internal),
	function 7(bit, bit) gbt_bit_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class gist_bit_ops using gist owner to postgres;

