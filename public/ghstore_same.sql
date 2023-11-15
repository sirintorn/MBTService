create function ghstore_same(ghstore, ghstore, internal) returns internal
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

alter function ghstore_same(ghstore, ghstore, internal) owner to postgres;

