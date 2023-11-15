create function _int_contained(integer[], integer[]) returns boolean
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

comment on function _int_contained(integer[], integer[]) is 'contained in';

alter function _int_contained(integer[], integer[]) owner to postgres;

