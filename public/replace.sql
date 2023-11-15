create function replace(citext, citext, citext) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, pg_catalog.regexp_replace($2::pg_catalog.text, '([^a-zA-Z_0-9])', E'\\\\\\1', 'g'), $3::pg_catalog.text, 'gi' );
$$;

alter function replace(citext, citext, citext) owner to postgres;

