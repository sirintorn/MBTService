create operator family gin__int_ops using gin;

alter operator family gin__int_ops using gin add
    operator 20 @@(integer[], query_int),
    operator 8 <@(integer[], integer[]),
    operator 13 @(integer[], integer[]),
    operator 7 @>(integer[], integer[]),
    operator 3 &&(integer[], integer[]),
    operator 14 ~(integer[], integer[]),
    function 4(integer[], integer[]) ginint4_consistent(internal, smallint, integer[], integer, internal, internal, internal, internal),
    function 3(integer[], integer[]) ginint4_queryextract(integer[], internal, smallint, internal, internal, internal, internal);

alter operator family gin__int_ops using gin owner to postgres;

create operator class gin__int_ops for type integer[] using gin as storage integer operator 3 &&(integer[], integer[]),
	operator 8 <@(integer[], integer[]),
	operator 20 @@(integer[], query_int),
	operator 6 =(anyarray,anyarray),
	operator 14 ~(integer[], integer[]),
	operator 7 @>(integer[], integer[]),
	operator 13 @(integer[], integer[]),
	function 1(integer[], integer[]) btint4cmp(integer,integer),
	function 2(integer[], integer[]) ginarrayextract(anyarray,internal,internal),
	function 3(integer[], integer[]) ginint4_queryextract(integer[], internal, smallint, internal, internal, internal, internal),
	function 4(integer[], integer[]) ginint4_consistent(internal, smallint, integer[], integer, internal, internal, internal, internal);

alter operator class gin__int_ops using gin owner to postgres;

