--Показывать ассортимент предлагаемой мебели и цену товара.
CREATE OR REPLACE FUNCTION ShowProductInfo()
RETURNS TABLE (Product_Name VARCHAR (200), Product_Price numeric(8,4)) AS $$
BEGIN
    RETURN QUERY
    SELECT Product.product_name, Product.product_price
    FROM Product ;
END;
$$ LANGUAGE plpgsql;

select * from ShowProductInfo();