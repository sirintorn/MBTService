create function xpath_list(text, text, text) returns text
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

alter function xpath_list(text, text, text) owner to postgres;

create function xpath_list(text, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT xpath_list($1,$2,',')$$;

alter function xpath_list(text, text) owner to postgres;

