create function regexp_replace(citext, citext, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, $2::pg_catalog.text, $3, 'i');
$$;

alter function regexp_replace(citext, citext, text) owner to postgres;

create function regexp_replace(citext, citext, text, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, $2::pg_catalog.text, $3, CASE WHEN pg_catalog.strpos($4, 'c') = 0 THEN  $4 || 'i' ELSE $4 END);
$$;

alter function regexp_replace(citext, citext, text, text) owner to postgres;

