-- Показать поля BillOfMaterialsID, ProductAssemblyID,ComponentID,UnitMeasureCode
--из таблицы Production.BillOfMaterials.Если значение поля
--ProductAssemblyID – NULL, заменить его на 0 и выделить в отдельное поле с названием ProductAssemblyID_0.

select 
	"BillOfMaterialsID" 
, 	coalesce(nullif ("ProductAssemblyID" , null),'0') AS ProductAssemblyID_0,
	"ProductAssemblyID"
, 	"ComponentID"
,	"UnitMeasureCode" 
from "Production"."BillOfMaterials";