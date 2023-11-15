create function regexp_matches(citext, citext) returns SETOF text[]
    immutable
    strict
    parallel safe
    rows 1
    language sql
as
$$
    SELECT pg_catalog.regexp_matches( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$$;

alter function regexp_matches(citext, citext) owner to postgres;

create function regexp_matches(citext, citext, text) returns SETOF text[]
    immutable
    strict
    parallel safe
    rows 10
    language sql
as
$$
    SELECT pg_catalog.regexp_matches( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$$;

alter function regexp_matches(citext, citext, text) owner to postgres;

