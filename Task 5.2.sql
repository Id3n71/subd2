--2) Создать полную копию одной из таблиц
select *
into table "PriceListCopy"
from "Furniture Store".public."PriceList";