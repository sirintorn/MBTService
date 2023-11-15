create operator family gist__ltree_ops using gist;

alter operator family gist__ltree_ops using gist add
    operator 16 ?(ltree[], lquery[]),
    operator 10 <@(ltree[], ltree),
    operator 11 @>(ltree, ltree[]),
    operator 12 ~(ltree[], lquery),
    operator 13 ~(lquery, ltree[]),
    operator 14 @(ltree[], ltxtquery),
    operator 15 @(ltxtquery, ltree[]),
    operator 17 ?(lquery[], ltree[]),
    function 1(ltree[], ltree[]) _ltree_consistent(internal, ltree[], smallint, oid, internal),
    function 7(ltree[], ltree[]) _ltree_same(ltree_gist, ltree_gist, internal),
    function 5(ltree[], ltree[]) _ltree_penalty(internal, internal, internal),
    function 2(ltree[], ltree[]) _ltree_union(internal, internal),
    function 6(ltree[], ltree[]) _ltree_picksplit(internal, internal),
    function 4(ltree[], ltree[]) ltree_decompress(internal),
    function 3(ltree[], ltree[]) _ltree_compress(internal);

alter operator family gist__ltree_ops using gist owner to postgres;

create operator class gist__ltree_ops default for type ltree[] using gist as storage ltree_gist operator 15 @(ltxtquery, ltree[]),
	operator 16 ?(ltree[], lquery[]),
	operator 17 ?(lquery[], ltree[]),
	operator 14 @(ltree[], ltxtquery),
	operator 10 <@(ltree[], ltree),
	operator 13 ~(lquery, ltree[]),
	operator 11 @>(ltree, ltree[]),
	operator 12 ~(ltree[], lquery),
	function 3(ltree[], ltree[]) _ltree_compress(internal),
	function 7(ltree[], ltree[]) _ltree_same(ltree_gist, ltree_gist, internal),
	function 6(ltree[], ltree[]) _ltree_picksplit(internal, internal),
	function 5(ltree[], ltree[]) _ltree_penalty(internal, internal, internal),
	function 4(ltree[], ltree[]) ltree_decompress(internal),
	function 1(ltree[], ltree[]) _ltree_consistent(internal, ltree[], smallint, oid, internal),
	function 2(ltree[], ltree[]) _ltree_union(internal, internal);

alter operator class gist__ltree_ops using gist owner to postgres;

