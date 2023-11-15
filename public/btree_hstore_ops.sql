create operator family btree_hstore_ops using btree;

alter operator family btree_hstore_ops using btree add
    operator 3 =(hstore, hstore),
    operator 1 #<#(hstore, hstore),
    operator 2 #<=#(hstore, hstore),
    operator 5 #>#(hstore, hstore),
    operator 4 #>=#(hstore, hstore),
    function 1(hstore, hstore) hstore_cmp(hstore, hstore);

alter operator family btree_hstore_ops using btree owner to postgres;

create operator class btree_hstore_ops default for type hstore using btree as
    operator 4 #>=#(hstore, hstore),
    operator 5 #>#(hstore, hstore),
    operator 3 =(hstore, hstore),
    operator 2 #<=#(hstore, hstore),
    operator 1 #<#(hstore, hstore),
    function 1(hstore, hstore) hstore_cmp(hstore, hstore);

alter operator class btree_hstore_ops using btree owner to postgres;

