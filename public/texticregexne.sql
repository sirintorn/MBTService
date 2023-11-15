create function texticregexne(citext, citext) returns boolean
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

alter function texticregexne(citext, citext) owner to postgres;

create function texticregexne(citext, text) returns boolean
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

alter function texticregexne(citext, text) owner to postgres;

