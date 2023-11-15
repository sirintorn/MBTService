create function metaphone(text, integer) returns text
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

alter function metaphone(text, integer) owner to postgres;

