create function dblink_current_query() returns text
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_current_query() owner to postgres;

