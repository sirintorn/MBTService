create function pgrowlocks(relname text, out locked_row tid, out locker xid, out multi boolean, out xids xid[], out modes text[], out pids integer[]) returns setof setof record
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function pgrowlocks(text, out tid, out xid, out boolean, out xid[], out text[], out integer[]) owner to postgres;

