create operator family text_ops using gin;

alter operator family text_ops using gin add
    function 4(text, text) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(text, text) gin_extract_query_text(text, internal, smallint, internal, internal),
    function 2(text, text) gin_extract_value_text(text, internal),
    function 5(text, text) gin_compare_prefix_text(text, text, smallint, internal);

alter operator family text_ops using gin owner to postgres;

create operator class text_ops default for type text using gin as
    operator 3 =(text,text),
    operator 5 >(text,text),
    operator 4 >=(text,text),
    operator 2 <=(text,text),
    operator 1 <(text,text),
    function 1(text, text) bttextcmp(text,text),
    function 3(text, text) gin_extract_query_text(text, internal, smallint, internal, internal),
    function 4(text, text) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 5(text, text) gin_compare_prefix_text(text, text, smallint, internal),
    function 2(text, text) gin_extract_value_text(text, internal);

alter operator class text_ops using gin owner to postgres;

