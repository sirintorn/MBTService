create function texticregexeq(citext, citext) returns boolean
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

alter function texticregexeq(citext, citext) owner to postgres;

create function texticregexeq(citext, text) returns boolean
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

alter function texticregexeq(citext, text) owner to postgres;

