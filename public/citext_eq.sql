create function citext_eq(citext, citext) returns boolean
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

alter function citext_eq(citext, citext) owner to postgres;

