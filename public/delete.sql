create function delete(hstore, text) returns hstore
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

alter function delete(hstore, text) owner to postgres;

create function delete(hstore, text[]) returns hstore
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

alter function delete(hstore, text[]) owner to postgres;

create function delete(hstore, hstore) returns hstore
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

alter function delete(hstore, hstore) owner to postgres;

