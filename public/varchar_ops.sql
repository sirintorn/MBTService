create operator family varchar_ops using gin;

alter operator family varchar_ops using gin add
    function 5(character varying, character varying) gin_compare_prefix_text(text, text, smallint, internal),
    function 3(character varying, character varying) gin_extract_query_text(text, internal, smallint, internal, internal),
    function 2(character varying, character varying) gin_extract_value_text(text, internal),
    function 4(character varying, character varying) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal);

alter operator family varchar_ops using gin owner to postgres;

create operator class varchar_ops default for type character varying using gin as
    operator 5 >(text,text),
    operator 2 <=(text,text),
    operator 1 <(text,text),
    operator 4 >=(text,text),
    operator 3 =(text,text),
    function 2(character varying, character varying) gin_extract_value_text(text, internal),
    function 3(character varying, character varying) gin_extract_query_text(text, internal, smallint, internal, internal),
    function 4(character varying, character varying) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 1(character varying, character varying) bttextcmp(text,text),
    function 5(character varying, character varying) gin_compare_prefix_text(text, text, smallint, internal);

alter operator class varchar_ops using gin owner to postgres;

