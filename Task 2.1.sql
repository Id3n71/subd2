--Найти минимальную дату рождения из таблицы HumanResources.Employee.

SELECT MIN("BirthDate") as "Oldest"
FROM "HumanResources"."Employee" ;