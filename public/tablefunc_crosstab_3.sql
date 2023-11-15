create type tablefunc_crosstab_3 as
(
    row_name   text,
    category_1 text,
    category_2 text,
    category_3 text
);

alter type tablefunc_crosstab_3 owner to postgres;

