create function pgstatginindex(relname regclass, out version integer, out pending_pages integer, out pending_tuples bigint) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstatginindex(regclass, out integer, out integer, out bigint) owner to postgres;

grant execute on function pgstatginindex(regclass, out integer, out integer, out bigint) to pg_stat_scan_tables;

