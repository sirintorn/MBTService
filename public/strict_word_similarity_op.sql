create function strict_word_similarity_op(text, text) returns boolean
    stable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function strict_word_similarity_op(text, text) owner to postgres;

