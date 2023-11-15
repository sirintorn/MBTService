create function word_similarity(text, text) returns real
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

alter function word_similarity(text, text) owner to postgres;

