--5) Создать копию таблицы без данных
select *
into table "Product4"
from "Products" 
where 1 = 2;