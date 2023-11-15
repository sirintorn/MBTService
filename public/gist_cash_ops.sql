create operator family gist_cash_ops using gist;

alter operator family gist_cash_ops using gist add
    operator 15 <->(money, money) for order by money_ops,
    operator 6 <>(money,money),
    function 3(money, money) gbt_cash_compress(internal),
    function 5(money, money) gbt_cash_penalty(internal, internal, internal),
    function 8(money, money) gbt_cash_distance(internal, money, smallint, oid, internal),
    function 6(money, money) gbt_cash_picksplit(internal, internal),
    function 7(money, money) gbt_cash_same(gbtreekey16, gbtreekey16, internal),
    function 1(money, money) gbt_cash_consistent(internal, money, smallint, oid, internal),
    function 2(money, money) gbt_cash_union(internal, internal),
    function 9(money, money) gbt_cash_fetch(internal),
    function 4(money, money) gbt_decompress(internal);

alter operator family gist_cash_ops using gist owner to postgres;

create operator class gist_cash_ops default for type money using gist as storage gbtreekey16 operator 5 >(money,money),
	operator 3 =(money,money),
	operator 2 <=(money,money),
	operator 4 >=(money,money),
	operator 1 <(money,money),
	function 1(money, money) gbt_cash_consistent(internal, money, smallint, oid, internal),
	function 7(money, money) gbt_cash_same(gbtreekey16, gbtreekey16, internal),
	function 6(money, money) gbt_cash_picksplit(internal, internal),
	function 5(money, money) gbt_cash_penalty(internal, internal, internal),
	function 4(money, money) gbt_decompress(internal),
	function 3(money, money) gbt_cash_compress(internal),
	function 2(money, money) gbt_cash_union(internal, internal);

alter operator class gist_cash_ops using gist owner to postgres;

