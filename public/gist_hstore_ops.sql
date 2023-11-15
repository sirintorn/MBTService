create operator family gist_hstore_ops using gist;

alter operator family gist_hstore_ops using gist add
    operator 7 @>(hstore, hstore),
    operator 13 @(hstore, hstore),
    operator 11 ?&(hstore, text[]),
    operator 10 ?|(hstore, text[]),
    operator 9 ?(hstore, text),
    function 2(hstore, hstore) ghstore_union(internal, internal),
    function 1(hstore, hstore) ghstore_consistent(internal, hstore, smallint, oid, internal),
    function 3(hstore, hstore) ghstore_compress(internal),
    function 4(hstore, hstore) ghstore_decompress(internal),
    function 5(hstore, hstore) ghstore_penalty(internal, internal, internal),
    function 6(hstore, hstore) ghstore_picksplit(internal, internal),
    function 7(hstore, hstore) ghstore_same(ghstore, ghstore, internal);

alter operator family gist_hstore_ops using gist owner to postgres;

create operator class gist_hstore_ops default for type hstore using gist as storage ghstore operator 7 @>(hstore, hstore),
	operator 9 ?(hstore, text),
	operator 10 ?|(hstore, text[]),
	operator 11 ?&(hstore, text[]),
	operator 13 @(hstore, hstore),
	function 6(hstore, hstore) ghstore_picksplit(internal, internal),
	function 1(hstore, hstore) ghstore_consistent(internal, hstore, smallint, oid, internal),
	function 2(hstore, hstore) ghstore_union(internal, internal),
	function 3(hstore, hstore) ghstore_compress(internal),
	function 4(hstore, hstore) ghstore_decompress(internal),
	function 7(hstore, hstore) ghstore_same(ghstore, ghstore, internal),
	function 5(hstore, hstore) ghstore_penalty(internal, internal, internal);

alter operator class gist_hstore_ops using gist owner to postgres;

