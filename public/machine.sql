create table machine
(
    id              integer   default nextval('machine_id_seq'::regclass) not null
        primary key,
    name            varchar                                               not null,
    description     varchar,
    location_id     integer
        constraint mac_locat
            references location
            on update cascade on delete cascade,
    is_valid        boolean   default true,
    create_by       integer
        constraint mac_creat
            references stakeholder
            on update cascade on delete cascade,
    create_datetime timestamp default now(),
    modify_by       integer
        constraint mac_modi
            references stakeholder
            on update cascade on delete cascade,
    modify_datetime timestamp
);

alter table machine
    owner to uikjzbfs;

create unique index machine_id_key
    on machine (id);

