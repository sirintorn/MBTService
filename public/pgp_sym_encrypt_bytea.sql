create function pgp_sym_encrypt_bytea(bytea, text) returns bytea
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgp_sym_encrypt_bytea(bytea, text) owner to postgres;

create function pgp_sym_encrypt_bytea(bytea, text, text) returns bytea
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function pgp_sym_encrypt_bytea(bytea, text, text) owner to postgres;

