create function populate_record(anyelement, hstore) returns anyelement
    immutable
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function populate_record(anyelement, hstore) owner to postgres;

