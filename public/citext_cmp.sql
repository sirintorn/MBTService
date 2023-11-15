create function citext_cmp(citext, citext) returns integer
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

alter function citext_cmp(citext, citext) owner to postgres;

