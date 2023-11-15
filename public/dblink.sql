create function dblink(text, text) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink(text, text) owner to postgres;

create function dblink(text, text, boolean) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink(text, text, boolean) owner to postgres;

create function dblink(text) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink(text) owner to postgres;

create function dblink(text, boolean) returns setof setof record
    strict
    parallel restricted
    language c
as
$$
begin
-- missing source code
end;

$$;

alter function dblink(text, boolean) owner to postgres;

