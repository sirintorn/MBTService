create function slice(hstore, text[]) returns hstore
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

alter function slice(hstore, text[]) owner to postgres;

