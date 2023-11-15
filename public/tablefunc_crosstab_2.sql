create type tablefunc_crosstab_2 as
(
    row_name   text,
    category_1 text,
    category_2 text
);

alter type tablefunc_crosstab_2 owner to postgres;

