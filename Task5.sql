--Показать место документа в памяти (DocumentNode), заголовок
--документа (Title) и расширение файла (FileExtension) из таблицы Production.Document. 
--расширением '.doc'.

select
	"DocumentNode" 
,	"Title" 
,	"FileExtension"  
from "Production"."Document" 
where "FileExtension" = '.doc';