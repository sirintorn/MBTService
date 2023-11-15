create operator !~* (procedure = texticregexne, leftarg = citext, rightarg = citext, negator = ~*, join = icregexnejoinsel, restrict = icregexnesel);

alter operator !~*(citext, citext) owner to postgres;

create operator !~* (procedure = texticregexne, leftarg = citext, rightarg = text, negator = ~*, join = icregexnejoinsel, restrict = icregexnesel);

alter operator !~*(citext, text) owner to postgres;

