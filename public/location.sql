create table location
(
    id              integer   default nextval('location_id_seq'::regclass) not null
        constraint machine_copy_pkey
            primary key,
    name            varchar                                                not null,
    description     varchar,
    is_valid        boolean   default true,
    create_by       integer
        constraint locat_creat
            references stakeholder
            on update cascade on delete cascade,
    create_datetime timestamp default now(),
    modify_by       integer
        constraint locat_modi
            references stakeholder
            on update cascade on delete cascade,
    modify_datetime timestamp
);

alter table location
    owner to uikjzbfs;

create unique index location_id_key
    on location (id);

