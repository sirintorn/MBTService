create operator family gist_trgm_ops using gist;

alter operator family gist_trgm_ops using gist add
    operator 3 ~~(text,text),
    operator 4 ~~*(text,text),
    operator 5 ~(text,text),
    operator 6 ~*(text,text),
    operator 9 %>>(text, text),
    operator 7 %>(text, text),
    operator 10 <->>>(text, text) for order by float_ops,
    operator 8 <->>(text, text) for order by float_ops,
    operator 1 %(text, text),
    operator 2 <->(text, text) for order by float_ops,
    function 1(text, text) gtrgm_consistent(internal, text, smallint, oid, internal),
    function 4(text, text) gtrgm_decompress(internal),
    function 3(text, text) gtrgm_compress(internal),
    function 2(text, text) gtrgm_union(internal, internal),
    function 6(text, text) gtrgm_picksplit(internal, internal),
    function 5(text, text) gtrgm_penalty(internal, internal, internal),
    function 8(text, text) gtrgm_distance(internal, text, smallint, oid, internal),
    function 7(text, text) gtrgm_same(gtrgm, gtrgm, internal);

alter operator family gist_trgm_ops using gist owner to postgres;

create operator class gist_trgm_ops for type text using gist as storage gtrgm operator 1 %(text, text),
	function 2(text, text) gtrgm_union(internal, internal),
	function 5(text, text) gtrgm_penalty(internal, internal, internal),
	function 6(text, text) gtrgm_picksplit(internal, internal),
	function 1(text, text) gtrgm_consistent(internal, text, smallint, oid, internal),
	function 7(text, text) gtrgm_same(gtrgm, gtrgm, internal),
	function 4(text, text) gtrgm_decompress(internal),
	function 3(text, text) gtrgm_compress(internal);

alter operator class gist_trgm_ops using gist owner to postgres;

