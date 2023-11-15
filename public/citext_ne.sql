create function citext_ne(citext, citext) returns boolean
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

alter function citext_ne(citext, citext) owner to postgres;

