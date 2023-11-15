create function dblink_get_pkey(text) returns setof setof dblink_pkey_results
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink_get_pkey(text) owner to postgres;

