create function g_intbig_same(intbig_gkey, intbig_gkey, internal) returns internal
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

alter function g_intbig_same(intbig_gkey, intbig_gkey, internal) owner to postgres;

