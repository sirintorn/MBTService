create function isdefined(hstore, text) returns boolean
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

alter function isdefined(hstore, text) owner to postgres;

