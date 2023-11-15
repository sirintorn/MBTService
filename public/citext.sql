-- Unknown how to generate base type type

alter type citext owner to postgres;

create function citext(char) returns citext
    immutable
    strict
    parallel safe
    cost 1
    language internal
as
$$
begin
-- missing source code
end;
$$;

alter function citext(char) owner to postgres;

create function citext(boolean) returns citext
    immutable
    strict
    parallel safe
    cost 1
    language internal
as
$$
begin
-- missing source code
end;
$$;

alter function citext(boolean) owner to postgres;

create function citext(inet) returns citext
    immutable
    strict
    parallel safe
    cost 1
    language internal
as
$$
begin
-- missing source code
end;
$$;

alter function citext(inet) owner to postgres;

