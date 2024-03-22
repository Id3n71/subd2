--3) Создать копию таблицы с выбранными полями
select p."ID"
into table "Product2"
from "Products" p;