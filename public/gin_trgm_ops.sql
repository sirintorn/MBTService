create operator family gin_trgm_ops using gin;

alter operator family gin_trgm_ops using gin add
    operator 1 %(text, text),
    operator 9 %>>(text, text),
    operator 3 ~~(text,text),
    operator 4 ~~*(text,text),
    operator 5 ~(text,text),
    operator 6 ~*(text,text),
    operator 7 %>(text, text),
    function 6(text, text) gin_trgm_triconsistent(internal, smallint, text, integer, internal, internal, internal),
    function 2(text, text) gin_extract_value_trgm(text, internal),
    function 4(text, text) gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal),
    function 3(text, text) gin_extract_query_trgm(text, internal, smallint, internal, internal, internal, internal);

alter operator family gin_trgm_ops using gin owner to postgres;

create operator class gin_trgm_ops for type text using gin as storage integer operator 1 %(text, text),
	function 4(text, text) gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal),
	function 1(text, text) btint4cmp(integer,integer),
	function 2(text, text) gin_extract_value_trgm(text, internal),
	function 3(text, text) gin_extract_query_trgm(text, internal, smallint, internal, internal, internal, internal);

alter operator class gin_trgm_ops using gin owner to postgres;

