create function hstore_version_diag(hstore) returns integer
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function hstore_version_diag(hstore) owner to postgres;

