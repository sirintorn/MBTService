create function translate(citext, citext, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.translate( pg_catalog.translate( $1::pg_catalog.text, pg_catalog.lower($2::pg_catalog.text), $3), pg_catalog.upper($2::pg_catalog.text), $3);
$$;

alter function translate(citext, citext, text) owner to postgres;

