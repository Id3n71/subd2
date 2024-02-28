--Из таблицы Production.Document показать поля DocumentNode, Title и FileExtension. 
--Отсортировать строки в алфавитном порядке в соответствии с полем Title.

select 
	"DocumentNode" 
,	"Title" 
, 	"FileExtension" 
from "Production"."Document" 
order by "Title" ;

