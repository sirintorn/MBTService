create operator family hash_hstore_ops using hash;

alter operator family hash_hstore_ops using hash add
    operator 1 =(hstore, hstore),
    function 1(hstore, hstore) hstore_hash(hstore);

alter operator family hash_hstore_ops using hash owner to postgres;

create operator class hash_hstore_ops default for type hstore using hash as
    operator 1 =(hstore, hstore),
    function 1(hstore, hstore) hstore_hash(hstore);

alter operator class hash_hstore_ops using hash owner to postgres;

