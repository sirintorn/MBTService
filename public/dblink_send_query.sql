create function dblink_send_query(text, text) returns integer
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_send_query(text, text) owner to postgres;

