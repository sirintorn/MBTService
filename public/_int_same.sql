create function _int_same(integer[], integer[]) returns boolean
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

comment on function _int_same(integer[], integer[]) is 'same as';

alter function _int_same(integer[], integer[]) owner to postgres;

