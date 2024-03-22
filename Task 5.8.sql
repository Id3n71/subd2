--8) Сформировать таблицу, которая имеет дубликаты строк. Удалить дубликаты
select *
into table "Products2"
from "Products" p;

--Формирование дубликата в таблице
insert into "Products2"
 ("ID"
 , "NAME") values
(7, 'Направляющие');

--Удаление дубликата в таблице
delete
from "Products2"
where ctid not in
(select max(ctid) from "Products2"
group by "Products2"."ID");

select *
from "Products2" p 