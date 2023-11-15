create function text_soundex(text) returns text
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

alter function text_soundex(text) owner to postgres;

