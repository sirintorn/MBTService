create function rboolop(query_int, integer[]) returns boolean
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

comment on function rboolop(query_int, integer[]) is 'boolean operation with array';

alter function rboolop(query_int, integer[]) owner to postgres;

