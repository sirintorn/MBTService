create function dblink_get_connections() returns text[]
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_get_connections() owner to postgres;

