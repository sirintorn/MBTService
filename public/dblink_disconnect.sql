create function dblink_disconnect() returns text
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_disconnect() owner to postgres;

create function dblink_disconnect(text) returns text
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_disconnect(text) owner to postgres;

