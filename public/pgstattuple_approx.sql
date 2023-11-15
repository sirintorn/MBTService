create function pgstattuple_approx(reloid regclass, out table_len bigint, out scanned_percent double precision, out approx_tuple_count bigint, out approx_tuple_len bigint, out approx_tuple_percent double precision, out dead_tuple_count bigint, out dead_tuple_len bigint, out dead_tuple_percent double precision, out approx_free_space bigint, out approx_free_percent double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstattuple_approx(regclass, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) owner to postgres;

grant execute on function pgstattuple_approx(regclass, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) to pg_stat_scan_tables;

