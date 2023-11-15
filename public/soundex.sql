create function soundex(text) returns text
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

alter function soundex(text) owner to postgres;

