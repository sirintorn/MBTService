create function dblink_fdw_validator(options text[], catalog oid) returns void
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_fdw_validator(text[], oid) owner to postgres;

