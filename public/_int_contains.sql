create function _int_contains(integer[], integer[]) returns boolean
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

comment on function _int_contains(integer[], integer[]) is 'contains';

alter function _int_contains(integer[], integer[]) owner to postgres;

