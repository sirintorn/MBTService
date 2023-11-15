create aggregate max(citext) (
    sfunc = citext_larger,
    stype = citext,
    combinefunc = citext_larger,
    parallel = safe,
    sortop = operator (>)
    );

alter aggregate max(citext) owner to postgres;

