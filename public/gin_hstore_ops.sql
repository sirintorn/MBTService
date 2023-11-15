create operator family gin_hstore_ops using gin;

alter operator family gin_hstore_ops using gin add
    operator 11 ?&(hstore, text[]),
    operator 10 ?|(hstore, text[]),
    operator 9 ?(hstore, text),
    operator 7 @>(hstore, hstore),
    function 2(hstore, hstore) gin_extract_hstore(hstore, internal),
    function 4(hstore, hstore) gin_consistent_hstore(internal, smallint, hstore, integer, internal, internal),
    function 3(hstore, hstore) gin_extract_hstore_query(hstore, internal, smallint, internal, internal);

alter operator family gin_hstore_ops using gin owner to postgres;

create operator class gin_hstore_ops default for type hstore using gin as storage text operator 7 @>(hstore, hstore),
	operator 9 ?(hstore, text),
	operator 10 ?|(hstore, text[]),
	operator 11 ?&(hstore, text[]),
	function 1(hstore, hstore) bttextcmp(text,text),
	function 2(hstore, hstore) gin_extract_hstore(hstore, internal),
	function 3(hstore, hstore) gin_extract_hstore_query(hstore, internal, smallint, internal, internal),
	function 4(hstore, hstore) gin_consistent_hstore(internal, smallint, hstore, integer, internal, internal);

alter operator class gin_hstore_ops using gin owner to postgres;

