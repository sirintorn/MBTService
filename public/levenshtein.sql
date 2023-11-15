create function levenshtein(text, text) returns integer
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

alter function levenshtein(text, text) owner to postgres;

create function levenshtein(text, text, integer, integer, integer) returns integer
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

alter function levenshtein(text, text, integer, integer, integer) owner to postgres;

