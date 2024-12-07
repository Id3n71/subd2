--Вывести имя и фамилию сотрудника, а также фамилию следующего в
--алфавитном   порядке   сотрудника.   Учитывать   только   сотрудников,получивших зарплату.("Person"."Person","HumanResources"."Employee").

SELECT p1."FirstName" , p1."LastName" ,
       (SELECT p2."LastName"
        FROM "HumanResources"."Employee"  e2
        JOIN "Person"."Person" p2 ON e2."BusinessEntityID" = p2."BusinessEntityID"
        WHERE e2."SalariedFlag" = 1
          AND p2."LastName" > p1."LastName"
        ORDER BY p2."LastName"
        LIMIT 1) AS NextLastName
FROM "HumanResources"."Employee"  e1
JOIN "Person"."Person"  p1 ON e1."BusinessEntityID"  = p1."BusinessEntityID" 
WHERE e1."SalariedFlag"  = 1
ORDER BY p1."LastName" ;
