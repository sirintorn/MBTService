create function boolop(integer[], query_int) returns boolean
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

comment on function boolop(integer[], query_int) is 'boolean operation with array';

alter function boolop(integer[], query_int) owner to postgres;

