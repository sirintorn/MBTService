create operator && (procedure = _int_overlap, leftarg = integer[], rightarg = integer[], commutator = &&, join = _int_overlap_joinsel, restrict = _int_overlap_sel);

alter operator &&(integer[], integer[]) owner to postgres;

create operator && (procedure = cube_overlap, leftarg = cube, rightarg = cube, commutator = &&, join = areajoinsel, restrict = areasel);

alter operator &&(cube, cube) owner to postgres;

