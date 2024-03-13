--Найти количество человек с именем David из таблицы HumanResources.Employee

SELECT COUNT( *  ) as "Name Count"
FROM "HumanResources"."Employee" 
where "LoginID"  like  '%david%';
