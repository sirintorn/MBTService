create table workorder_fg
(
    id                 integer          default nextval('workorder_result_id_seq'::regclass) not null
        constraint workorder_result_pkey
            primary key,
    workorder_id       integer                                                               not null,
    fg_barcode         varchar          default ''::character varying                        not null,
    fg_spec            varchar                                                               not null,
    fg_description     varchar,
    fg_lenght          double precision default 0,
    fg_qty             integer          default 0,
    fg_weight_estimate double precision default 0,
    fg_area            double precision default 0,
    fg_qty_actual      double precision default 0,
    fg_weight_actual   double precision default 0,
    fg_bundle          double precision default 0,
    note               varchar          default ''::character varying,
    status             integer          default 0,
    is_valid           boolean          default true,
    create_by          integer,
    create_datetime    timestamp(6)     default now(),
    modify_by          integer,
    modify_datetime    timestamp(6)
);

alter table workorder_fg
    owner to uikjzbfs;

