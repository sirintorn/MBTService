create function slice_array(hstore, text[]) returns text[]
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

alter function slice_array(hstore, text[]) owner to postgres;

