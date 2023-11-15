create operator family money_ops using gin;

alter operator family money_ops using gin add
    function 3(money, money) gin_extract_query_money(money, internal, smallint, internal, internal),
    function 5(money, money) gin_compare_prefix_money(money, money, smallint, internal),
    function 4(money, money) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(money, money) gin_extract_value_money(money, internal);

alter operator family money_ops using gin owner to postgres;

create operator class money_ops default for type money using gin as
    operator 5 >(money,money),
    operator 3 =(money,money),
    operator 4 >=(money,money),
    operator 2 <=(money,money),
    operator 1 <(money,money),
    function 4(money, money) gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal),
    function 2(money, money) gin_extract_value_money(money, internal),
    function 5(money, money) gin_compare_prefix_money(money, money, smallint, internal),
    function 1(money, money) cash_cmp(money,money),
    function 3(money, money) gin_extract_query_money(money, internal, smallint, internal, internal);

alter operator class money_ops using gin owner to postgres;

