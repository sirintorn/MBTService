create sequence workorder_result_id_seq
    as integer;

alter sequence workorder_result_id_seq owner to uikjzbfs;

alter sequence workorder_result_id_seq owned by workorder_fg.id;

