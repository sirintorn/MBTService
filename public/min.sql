create aggregate min(citext) (
    sfunc = citext_smaller,
    stype = citext,
    combinefunc = citext_smaller,
    parallel = safe,
    sortop = operator (<)
    );

alter aggregate min(citext) owner to postgres;

