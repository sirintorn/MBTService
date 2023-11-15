create operator family cube_ops using btree;

alter operator family cube_ops using btree add
    operator 4 >=(cube, cube),
    operator 3 =(cube, cube),
    operator 5 >(cube, cube),
    operator 1 <(cube, cube),
    operator 2 <=(cube, cube),
    function 1(cube, cube) cube_cmp(cube, cube);

alter operator family cube_ops using btree owner to postgres;

create operator class cube_ops default for type cube using btree as
    operator 1 <(cube, cube),
    operator 2 <=(cube, cube),
    operator 3 =(cube, cube),
    operator 4 >=(cube, cube),
    operator 5 >(cube, cube),
    function 1(cube, cube) cube_cmp(cube, cube);

alter operator class cube_ops using btree owner to postgres;

