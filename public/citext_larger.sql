create function citext_larger(citext, citext) returns citext
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

alter function citext_larger(citext, citext) owner to postgres;

