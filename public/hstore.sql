-- Unknown how to generate base type type

alter type hstore owner to postgres;

create function hstore(text, text) returns hstore
    immutable
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function hstore(text, text) owner to postgres;

create function hstore(text[], text[]) returns hstore
    immutable
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function hstore(text[], text[]) owner to postgres;

create function hstore(text[]) returns hstore
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

alter function hstore(text[]) owner to postgres;

create function hstore(record) returns hstore
    immutable
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function hstore(record) owner to postgres;

