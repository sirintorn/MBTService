create function pgstattuple(relname text, out table_len bigint, out tuple_count bigint, out tuple_len bigint, out tuple_percent double precision, out dead_tuple_count bigint, out dead_tuple_len bigint, out dead_tuple_percent double precision, out free_space bigint, out free_percent double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstattuple(text, out bigint, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) owner to postgres;

grant execute on function pgstattuple(text, out bigint, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) to pg_stat_scan_tables;

create function pgstattuple(reloid regclass, out table_len bigint, out tuple_count bigint, out tuple_len bigint, out tuple_percent double precision, out dead_tuple_count bigint, out dead_tuple_len bigint, out dead_tuple_percent double precision, out free_space bigint, out free_percent double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstattuple(regclass, out bigint, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) owner to postgres;

grant execute on function pgstattuple(regclass, out bigint, out bigint, out bigint, out double precision, out bigint, out bigint, out double precision, out bigint, out double precision) to pg_stat_scan_tables;

