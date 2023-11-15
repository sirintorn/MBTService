create function split_part(citext, citext, integer) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT (pg_catalog.regexp_split_to_array( $1::pg_catalog.text, pg_catalog.regexp_replace($2::pg_catalog.text, '([^a-zA-Z_0-9])', E'\\\\\\1', 'g'), 'i'))[$3];
$$;

alter function split_part(citext, citext, integer) owner to postgres;

