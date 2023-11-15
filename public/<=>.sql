create operator <=> (procedure = distance_chebyshev, leftarg = cube, rightarg = cube, commutator = <=>);

alter operator <=>(cube, cube) owner to postgres;

