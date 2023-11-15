create operator family gist_ltree_ops using gist;

alter operator family gist_ltree_ops using gist add
    operator 17 ?(lquery[], ltree),
    operator 1 <(ltree, ltree),
    operator 2 <=(ltree, ltree),
    operator 3 =(ltree, ltree),
    operator 4 >=(ltree, ltree),
    operator 5 >(ltree, ltree),
    operator 10 @>(ltree, ltree),
    operator 11 <@(ltree, ltree),
    operator 12 ~(ltree, lquery),
    operator 13 ~(lquery, ltree),
    operator 14 @(ltree, ltxtquery),
    operator 15 @(ltxtquery, ltree),
    operator 16 ?(ltree, lquery[]),
    function 5(ltree, ltree) ltree_penalty(internal, internal, internal),
    function 6(ltree, ltree) ltree_picksplit(internal, internal),
    function 4(ltree, ltree) ltree_decompress(internal),
    function 3(ltree, ltree) ltree_compress(internal),
    function 1(ltree, ltree) ltree_consistent(internal, ltree, smallint, oid, internal),
    function 2(ltree, ltree) ltree_union(internal, internal),
    function 7(ltree, ltree) ltree_same(ltree_gist, ltree_gist, internal);

alter operator family gist_ltree_ops using gist owner to postgres;

create operator class gist_ltree_ops default for type ltree using gist as storage ltree_gist operator 12 ~(ltree, lquery),
	operator 13 ~(lquery, ltree),
	operator 4 >=(ltree, ltree),
	operator 5 >(ltree, ltree),
	operator 17 ?(lquery[], ltree),
	operator 10 @>(ltree, ltree),
	operator 16 ?(ltree, lquery[]),
	operator 11 <@(ltree, ltree),
	operator 15 @(ltxtquery, ltree),
	operator 14 @(ltree, ltxtquery),
	operator 1 <(ltree, ltree),
	operator 2 <=(ltree, ltree),
	operator 3 =(ltree, ltree),
	function 4(ltree, ltree) ltree_decompress(internal),
	function 7(ltree, ltree) ltree_same(ltree_gist, ltree_gist, internal),
	function 5(ltree, ltree) ltree_penalty(internal, internal, internal),
	function 6(ltree, ltree) ltree_picksplit(internal, internal),
	function 2(ltree, ltree) ltree_union(internal, internal),
	function 1(ltree, ltree) ltree_consistent(internal, ltree, smallint, oid, internal),
	function 3(ltree, ltree) ltree_compress(internal);

alter operator class gist_ltree_ops using gist owner to postgres;

