create operator <-> (procedure = similarity_dist, leftarg = text, rightarg = text, commutator = <->);

alter operator <->(text, text) owner to postgres;

create operator <-> (procedure = cube_distance, leftarg = cube, rightarg = cube, commutator = <->);

alter operator <->(cube, cube) owner to postgres;

create operator <-> (procedure = cash_dist, leftarg = money, rightarg = money, commutator = <->);

alter operator <->(money, money) owner to postgres;

create operator <-> (procedure = date_dist, leftarg = date, rightarg = date, commutator = <->);

alter operator <->(date, date) owner to postgres;

create operator <-> (procedure = float4_dist, leftarg = real, rightarg = real, commutator = <->);

alter operator <->(real, real) owner to postgres;

create operator <-> (procedure = float8_dist, leftarg = double precision, rightarg = double precision, commutator = <->);

alter operator <->(double precision, double precision) owner to postgres;

create operator <-> (procedure = int2_dist, leftarg = smallint, rightarg = smallint, commutator = <->);

alter operator <->(smallint, smallint) owner to postgres;

create operator <-> (procedure = int4_dist, leftarg = integer, rightarg = integer, commutator = <->);

alter operator <->(integer, integer) owner to postgres;

create operator <-> (procedure = int8_dist, leftarg = bigint, rightarg = bigint, commutator = <->);

alter operator <->(bigint, bigint) owner to postgres;

create operator <-> (procedure = interval_dist, leftarg = interval, rightarg = interval, commutator = <->);

alter operator <->(interval, interval) owner to postgres;

create operator <-> (procedure = oid_dist, leftarg = oid, rightarg = oid, commutator = <->);

alter operator <->(oid, oid) owner to postgres;

create operator <-> (procedure = time_dist, leftarg = time, rightarg = time, commutator = <->);

alter operator <->(time, time) owner to postgres;

create operator <-> (procedure = ts_dist, leftarg = timestamp, rightarg = timestamp, commutator = <->);

alter operator <->(timestamp, timestamp) owner to postgres;

create operator <-> (procedure = tstz_dist, leftarg = timestamp with time zone, rightarg = timestamp with time zone, commutator = <->);

alter operator <->(timestamp with time zone, timestamp with time zone) owner to postgres;

