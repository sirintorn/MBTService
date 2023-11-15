create function xslt_process(text, text, text) returns text
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function xslt_process(text, text, text) owner to postgres;

create function xslt_process(text, text) returns text
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

alter function xslt_process(text, text) owner to postgres;

