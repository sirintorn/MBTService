create table stakeholder
(
    id              integer   default nextval('stakeholder_id_seq'::regclass) not null
        primary key,
    name            varchar                                                   not null,
    department      varchar,
    username        varchar                                                   not null,
    password        varchar                                                   not null,
    email           varchar,
    is_valid        boolean   default true,
    create_by       integer
        constraint stake_crea
            references stakeholder
            on update cascade on delete cascade,
    create_datetime timestamp default now(),
    modify_by       integer
        constraint stake_modi
            references stakeholder
            on update cascade on delete cascade,
    modify_datetime timestamp
);

alter table stakeholder
    owner to uikjzbfs;

create unique index stakeholder_id_key
    on stakeholder (id);

