create function texticlike(citext, citext) returns boolean
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

alter function texticlike(citext, citext) owner to postgres;

create function texticlike(citext, text) returns boolean
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

alter function texticlike(citext, text) owner to postgres;

