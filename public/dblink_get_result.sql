create function dblink_get_result(text) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink_get_result(text) owner to postgres;

create function dblink_get_result(text, boolean) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink_get_result(text, boolean) owner to postgres;

