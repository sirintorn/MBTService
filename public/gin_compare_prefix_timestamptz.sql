create function gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal) returns integer
    immutable
    strict
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal) owner to postgres;

