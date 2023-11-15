create operator ~* (procedure = texticregexeq, leftarg = citext, rightarg = citext, negator = !~*, join = icregexeqjoinsel, restrict = icregexeqsel);

alter operator ~*(citext, citext) owner to postgres;

create operator ~* (procedure = texticregexeq, leftarg = citext, rightarg = text, negator = !~*, join = icregexeqjoinsel, restrict = icregexeqsel);

alter operator ~*(citext, text) owner to postgres;

