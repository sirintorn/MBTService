create function sort(integer[], text) returns integer[]
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

alter function sort(integer[], text) owner to postgres;

create function sort(integer[]) returns integer[]
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

alter function sort(integer[]) owner to postgres;

