create function texticnlike(citext, citext) returns boolean
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

alter function texticnlike(citext, citext) owner to postgres;

create function texticnlike(citext, text) returns boolean
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

alter function texticnlike(citext, text) owner to postgres;

