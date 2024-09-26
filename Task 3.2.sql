--Показать список продуктов (поле Name), в котором указано, есть ли
--у продукта рейтинг или нет, из таблиц Production.Product, Production.ProductRewiew, используя LEFT OUTER JOIN
	
	SELECT 
    p."Name",
    pr."Rating" as "ProductRating"
    from "Production"."Product" p 
    left outer join "Production"."ProductReview" pr on p."ProductID"  = pr."ProductID" ;
   