create function show_trgm(text) returns text[]
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

alter function show_trgm(text) owner to postgres;

