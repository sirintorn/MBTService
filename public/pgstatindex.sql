create function pgstatindex(relname text, out version integer, out tree_level integer, out index_size bigint, out root_block_no bigint, out internal_pages bigint, out leaf_pages bigint, out empty_pages bigint, out deleted_pages bigint, out avg_leaf_density double precision, out leaf_fragmentation double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstatindex(text, out integer, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision, out double precision) owner to postgres;

grant execute on function pgstatindex(text, out integer, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision, out double precision) to pg_stat_scan_tables;

create function pgstatindex(relname regclass, out version integer, out tree_level integer, out index_size bigint, out root_block_no bigint, out internal_pages bigint, out leaf_pages bigint, out empty_pages bigint, out deleted_pages bigint, out avg_leaf_density double precision, out leaf_fragmentation double precision) returns record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgstatindex(regclass, out integer, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision, out double precision) owner to postgres;

grant execute on function pgstatindex(regclass, out integer, out integer, out bigint, out bigint, out bigint, out bigint, out bigint, out bigint, out double precision, out double precision) to pg_stat_scan_tables;

