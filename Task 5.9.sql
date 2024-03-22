--9) Изменить данные в таблице по критерию
update "Products3"
set "Type"  = 'Фурнитура'
where "ID" in (2, 3);

select *
from "Products3" ;

alter table "Products3"
add column "Type" varchar;