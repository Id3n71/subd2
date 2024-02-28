--Показать поля ProductID, Name из таблицы Production.Product с применением функции COALESCE(). Показать поле Measurement,
--так, чтобы, если значение в поле Color известно, то показать его, а иначе, 
--показать значение в поле Style. Если и в поле Style значение неизвестно, то вывести значение 'UNKNOWN'.

select 
	"ProductID"
,	"Name"
, 	coalesce( "Style","Color", 'UNKNOWN')  
from "Production"."Product" ;