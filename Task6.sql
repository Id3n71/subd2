--Из таблицы Production.ProductSubcategory показать поля
--ProductSubcategoryID, Name. Показать только значения поля
--Name из списка «переключатели», «гарнитуры», «колеса» ('Derailleurs','Headsets', 'Wheels').Использовать оператор IN.

select 
	"ProductSubcategoryID"  
,	"Name"
from "Production"."ProductSubcategory"  
where "Name" in ('Headset','Derailleurs','Wheels');