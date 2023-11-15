create operator <#> (procedure = distance_taxicab, leftarg = cube, rightarg = cube, commutator = <#>);

alter operator <#>(cube, cube) owner to postgres;

