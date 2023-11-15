create operator family gist_bytea_ops using gist;

alter operator family gist_bytea_ops using gist add
    operator 6 <>(bytea,bytea),
    function 1(bytea, bytea) gbt_bytea_consistent(internal, bytea, smallint, oid, internal),
    function 9(bytea, bytea) gbt_var_fetch(internal),
    function 5(bytea, bytea) gbt_bytea_penalty(internal, internal, internal),
    function 4(bytea, bytea) gbt_var_decompress(internal),
    function 6(bytea, bytea) gbt_bytea_picksplit(internal, internal),
    function 3(bytea, bytea) gbt_bytea_compress(internal),
    function 7(bytea, bytea) gbt_bytea_same(gbtreekey_var, gbtreekey_var, internal),
    function 2(bytea, bytea) gbt_bytea_union(internal, internal);

alter operator family gist_bytea_ops using gist owner to postgres;

create operator class gist_bytea_ops default for type bytea using gist as storage gbtreekey_var operator 5 >(bytea,bytea),
	operator 1 <(bytea,bytea),
	operator 2 <=(bytea,bytea),
	operator 3 =(bytea,bytea),
	operator 4 >=(bytea,bytea),
	function 3(bytea, bytea) gbt_bytea_compress(internal),
	function 1(bytea, bytea) gbt_bytea_consistent(internal, bytea, smallint, oid, internal),
	function 2(bytea, bytea) gbt_bytea_union(internal, internal),
	function 4(bytea, bytea) gbt_var_decompress(internal),
	function 5(bytea, bytea) gbt_bytea_penalty(internal, internal, internal),
	function 6(bytea, bytea) gbt_bytea_picksplit(internal, internal),
	function 7(bytea, bytea) gbt_bytea_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class gist_bytea_ops using gist owner to postgres;

