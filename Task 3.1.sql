-- Показать процент комиссии (ComissionPct) и поля FirstName, LastName из таблиц PersonPerson, Sales.SalesPerson.

 SELECT 
   	p."FirstName"
   ,p."LastName" 
   ,sp."CommissionPct"
FROM "Person"."Person" p 
INNER join "Sales"."SalesPerson" sp 
ON sp."BusinessEntityID" = sp."BusinessEntityID"