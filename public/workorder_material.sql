create table workorder_material
(
    id                       serial
        primary key,
    workorder_id             integer not null
        constraint wo_mat_wo
            references workorder
            on update cascade on delete cascade,
    specoil_barcode          varchar,
    specoil_code             varchar not null,
    specoil_description      varchar,
    lot                      varchar          default ''::character varying,
    coil_no                  varchar not null,
    coil_weight_start        double precision default 0,
    coil_weight_start_actual double precision default 0,
    coil_weight_estimate     double precision default 0,
    coil_weight_actual       double precision default 0,
    coil_weight_remaining    double precision default 0,
    status                   integer          default 0,
    is_valid                 boolean          default true,
    create_by                integer
        constraint wo_mat_creat
            references stakeholder
            on update cascade on delete cascade,
    create_datetime          timestamp(6)     default now(),
    modify_by                integer
        constraint wo_mat_modi
            references stakeholder
            on update cascade on delete cascade,
    modify_datetime          timestamp(6)
);

alter table workorder_material
    owner to uikjzbfs;

