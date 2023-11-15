create function _int_different(integer[], integer[]) returns boolean
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

comment on function _int_different(integer[], integer[]) is 'different';

alter function _int_different(integer[], integer[]) owner to postgres;

