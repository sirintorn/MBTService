create function dblink_is_busy(text) returns integer
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function dblink_is_busy(text) owner to postgres;

