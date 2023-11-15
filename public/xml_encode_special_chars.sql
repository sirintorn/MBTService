create function xml_encode_special_chars(text) returns text
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

alter function xml_encode_special_chars(text) owner to postgres;

