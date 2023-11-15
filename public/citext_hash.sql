create function citext_hash(citext) returns integer
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

alter function citext_hash(citext) owner to postgres;

