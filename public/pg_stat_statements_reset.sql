create function pg_stat_statements_reset() returns void
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pg_stat_statements_reset() owner to postgres;

