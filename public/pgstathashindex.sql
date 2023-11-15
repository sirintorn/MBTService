create function pgstathashindex(relname regclass, out version integer, out bucket_pages bigint, out overflow_pages bigint, out bitmap_pages bigint, out unused_pages bigint, out live_items bigint, out dead_items bigint, out free_percent double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstathashindex(regclass, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision) owner to postgres;

grant execute on function pgstathashindex(regclass, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision) to pg_stat_scan_tables;

