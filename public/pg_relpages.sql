create function pg_relpages(relname text) returns bigint
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pg_relpages(text) owner to postgres;

grant execute on function pg_relpages(text) to pg_stat_scan_tables;

create function pg_relpages(relname regclass) returns bigint
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pg_relpages(regclass) owner to postgres;

grant execute on function pg_relpages(regclass) to pg_stat_scan_tables;

