create operator family bpchar_ops using gin;

alter operator family bpchar_ops using gin add
    function 2(character, character) gin_extract_value_bpchar(char, internal),
    function 5(character, character) gin_compare_prefix_bpchar(char, char, smallint, internal),
    function 4(character, character) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(character, character) gin_extract_query_bpchar(char, internal, smallint, internal, internal);

alter operator family bpchar_ops using gin owner to postgres;

create operator class bpchar_ops default for type character using gin as
    operator 1 <(character,character),
    operator 2 <=(character,character),
    operator 3 =(character,character),
    operator 4 >=(character,character),
    operator 5 >(character,character),
    function 1(character, character) bpcharcmp(character,character),
    function 5(character, character) gin_compare_prefix_bpchar(char, char, smallint, internal),
    function 4(character, character) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 3(character, character) gin_extract_query_bpchar(char, internal, smallint, internal, internal),
    function 2(character, character) gin_extract_value_bpchar(char, internal);

alter operator class bpchar_ops using gin owner to postgres;

