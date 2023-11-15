create function dblink_get_notify(out notify_name text, out be_pid integer, out extra text) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink_get_notify(out text, out integer, out text) owner to postgres;

create function dblink_get_notify(conname text, out notify_name text, out be_pid integer, out extra text) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink_get_notify(text, out text, out integer, out text) owner to postgres;

