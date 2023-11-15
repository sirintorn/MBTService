create function levenshtein_less_equal(text, text, integer) returns integer
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

alter function levenshtein_less_equal(text, text, integer) owner to postgres;

create function levenshtein_less_equal(text, text, integer, integer, integer, integer) returns integer
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

alter function levenshtein_less_equal(text, text, integer, integer, integer, integer) owner to postgres;

