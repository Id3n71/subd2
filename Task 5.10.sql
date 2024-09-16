
--10) Изменить данные в столбце, применив математические вычисления (например, увеличить цену на 15%, уменьшить количество в два раза)
alter table "Products3"
add column "Price" int;

update "Products3"
set "Price" = 30
where "ID" in (1, 2);

update "Products3"
set "Price" = 71
where "ID" in (3, 4, 5);

update "Products3"
set "Price" = "Price" + "Price" * 0.15
where "ID" in (3, 4, 5);
