create table workorder
(
    id                      serial
        primary key,
    wo_id                   varchar not null,
    wo_barcode              varchar not null,
    wo_date                 date    not null,
    ipo                     varchar not null,
    prq_id                  varchar not null,
    project                 varchar,
    prd_completion_deadline date    not null,
    machine_id              integer not null
        constraint wo_mac
            references machine
            on update cascade on delete cascade,
    labor_qty               integer,
    actual_finish           timestamp(6),
    actual_start            timestamp(6),
    fg_total_weight         double precision,
    downgread_15            smallint,
    downgrade_22            integer,
    downgrade_3             integer,
    downgrade_weight        double precision,
    scrap_weight            double precision,
    downtime                integer,
    setuptime               integer,
    status                  integer,
    is_valid                boolean   default true,
    create_by               integer
        constraint wo_creat
            references stakeholder
            on update cascade on delete cascade,
    create_datetime         timestamp default now(),
    modify_by               integer
        constraint wo_modi
            references stakeholder
            on update cascade on delete cascade,
    modify_datetime         timestamp
);

alter table workorder
    owner to uikjzbfs;

create unique index workorder_id_key
    on workorder (id);

