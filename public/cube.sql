-- Unknown how to generate base type type

comment on type cube is 'multi-dimensional cube ''(FLOAT-1, FLOAT-2, ..., FLOAT-N), (FLOAT-1, FLOAT-2, ..., FLOAT-N)''';

alter type cube owner to postgres;

create function cube(double precision[], double precision[]) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(double precision[], double precision[]) owner to postgres;

create function cube(double precision[]) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(double precision[]) owner to postgres;

create function cube(double precision) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(double precision) owner to postgres;

create function cube(double precision, double precision) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(double precision, double precision) owner to postgres;

create function cube(cube, double precision) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(cube, double precision) owner to postgres;

create function cube(cube, double precision, double precision) returns cube
    immutable
    strict
    parallel safe
    language c
as
$$
begin
-- missing source code
end;
$$;

alter function cube(cube, double precision, double precision) owner to postgres;

