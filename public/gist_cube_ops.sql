create operator family gist_cube_ops using gist;

alter operator family gist_cube_ops using gist add
    operator 14 ~(cube, cube),
    operator 3 &&(cube, cube),
    operator 6 =(cube, cube),
    operator 7 @>(cube, cube),
    operator 8 <@(cube, cube),
    operator 13 @(cube, cube),
    operator 15 ~>(cube, integer) for order by float_ops,
    operator 16 <#>(cube, cube) for order by float_ops,
    operator 17 <->(cube, cube) for order by float_ops,
    operator 18 <=>(cube, cube) for order by float_ops,
    function 2(cube, cube) g_cube_union(internal, internal),
    function 1(cube, cube) g_cube_consistent(internal, cube, smallint, oid, internal),
    function 7(cube, cube) g_cube_same(cube, cube, internal),
    function 5(cube, cube) g_cube_penalty(internal, internal, internal),
    function 6(cube, cube) g_cube_picksplit(internal, internal),
    function 8(cube, cube) g_cube_distance(internal, cube, smallint, oid, internal);

alter operator family gist_cube_ops using gist owner to postgres;

create operator class gist_cube_ops default for type cube using gist as
    operator 3 &&(cube, cube),
    operator 6 =(cube, cube),
    operator 7 @>(cube, cube),
    operator 8 <@(cube, cube),
    operator 13 @(cube, cube),
    operator 14 ~(cube, cube),
    operator 15 ~>(cube, integer) for order by float_ops,
    operator 16 <#>(cube, cube) for order by float_ops,
    operator 17 <->(cube, cube) for order by float_ops,
    operator 18 <=>(cube, cube) for order by float_ops,
    function 1(cube, cube) g_cube_consistent(internal, cube, smallint, oid, internal),
    function 2(cube, cube) g_cube_union(internal, internal),
    function 7(cube, cube) g_cube_same(cube, cube, internal),
    function 6(cube, cube) g_cube_picksplit(internal, internal),
    function 5(cube, cube) g_cube_penalty(internal, internal, internal),
    function 8(cube, cube) g_cube_distance(internal, cube, smallint, oid, internal);

alter operator class gist_cube_ops using gist owner to postgres;

