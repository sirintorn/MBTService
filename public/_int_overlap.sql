create function _int_overlap(integer[], integer[]) returns boolean
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

comment on function _int_overlap(integer[], integer[]) is 'overlaps';

alter function _int_overlap(integer[], integer[]) owner to postgres;

