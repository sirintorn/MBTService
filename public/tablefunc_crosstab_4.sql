create type tablefunc_crosstab_4 as
(
    row_name   text,
    category_1 text,
    category_2 text,
    category_3 text,
    category_4 text
);

alter type tablefunc_crosstab_4 owner to postgres;

