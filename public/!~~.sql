create operator !~~ (procedure = texticnlike, leftarg = citext, rightarg = citext, negator = ~~, join = icnlikejoinsel, restrict = icnlikesel);

alter operator !~~(citext, citext) owner to postgres;

create operator !~~ (procedure = texticnlike, leftarg = citext, rightarg = text, negator = ~~, join = icnlikejoinsel, restrict = icnlikesel);

alter operator !~~(citext, text) owner to postgres;

