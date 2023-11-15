create operator ~~* (procedure = texticlike, leftarg = citext, rightarg = citext, negator = !~~*, join = iclikejoinsel, restrict = iclikesel);

alter operator ~~*(citext, citext) owner to postgres;

create operator ~~* (procedure = texticlike, leftarg = citext, rightarg = text, negator = !~~*, join = iclikejoinsel, restrict = iclikesel);

alter operator ~~*(citext, text) owner to postgres;

