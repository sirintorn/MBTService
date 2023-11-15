create function tconvert(text, text) returns hstore
    immutable
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function tconvert(text, text) owner to postgres;

