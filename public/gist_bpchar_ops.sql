create operator family gist_bpchar_ops using gist;

alter operator family gist_bpchar_ops using gist add
    operator 6 <>(character,character),
    function 9(character, character) gbt_var_fetch(internal),
    function 1(character, character) gbt_bpchar_consistent(internal, char, smallint, oid, internal),
    function 2(character, character) gbt_text_union(internal, internal),
    function 3(character, character) gbt_bpchar_compress(internal),
    function 4(character, character) gbt_var_decompress(internal),
    function 5(character, character) gbt_text_penalty(internal, internal, internal),
    function 6(character, character) gbt_text_picksplit(internal, internal),
    function 7(character, character) gbt_text_same(gbtreekey_var, gbtreekey_var, internal);

alter operator family gist_bpchar_ops using gist owner to postgres;

create operator class gist_bpchar_ops default for type character using gist as storage gbtreekey_var operator 4 >=(character,character),
	operator 1 <(character,character),
	operator 2 <=(character,character),
	operator 3 =(character,character),
	operator 5 >(character,character),
	function 6(character, character) gbt_text_picksplit(internal, internal),
	function 1(character, character) gbt_bpchar_consistent(internal, char, smallint, oid, internal),
	function 2(character, character) gbt_text_union(internal, internal),
	function 3(character, character) gbt_bpchar_compress(internal),
	function 4(character, character) gbt_var_decompress(internal),
	function 5(character, character) gbt_text_penalty(internal, internal, internal),
	function 7(character, character) gbt_text_same(gbtreekey_var, gbtreekey_var, internal);

alter operator class gist_bpchar_ops using gist owner to postgres;

