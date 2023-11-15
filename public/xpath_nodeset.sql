create function xpath_nodeset(text, text, text, text) returns text
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

alter function xpath_nodeset(text, text, text, text) owner to postgres;

create function xpath_nodeset(text, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT xpath_nodeset($1,$2,'','')$$;

alter function xpath_nodeset(text, text) owner to postgres;

create function xpath_nodeset(text, text, text) returns text
    immutable
    strict
    parallel safe
    language sql
as
$$SELECT xpath_nodeset($1,$2,'',$3)$$;

alter function xpath_nodeset(text, text, text) owner to postgres;

