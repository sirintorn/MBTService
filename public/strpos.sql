create function strpos(citext, citext) returns integer
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.strpos( pg_catalog.lower( $1::pg_catalog.text ), pg_catalog.lower( $2::pg_catalog.text ) );
$$;

alter function strpos(citext, citext) owner to postgres;

