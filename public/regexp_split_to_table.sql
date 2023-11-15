create function regexp_split_to_table(citext, citext) returns SETOF text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.regexp_split_to_table( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$$;

alter function regexp_split_to_table(citext, citext) owner to postgres;

create function regexp_split_to_table(citext, citext, text) returns SETOF text
    immutable
    strict
    parallel safe
    language sql
as
$$
    SELECT pg_catalog.regexp_split_to_table( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$$;

alter function regexp_split_to_table(citext, citext, text) owner to postgres;

