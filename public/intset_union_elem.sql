create function intset_union_elem(integer[], integer) returns integer[]
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

alter function intset_union_elem(integer[], integer) owner to postgres;

