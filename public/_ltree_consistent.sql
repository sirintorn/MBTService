create function _ltree_consistent(internal, ltree[], smallint, oid, internal) returns boolean
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

alter function _ltree_consistent(internal, ltree[], smallint, oid, internal) owner to postgres;

