--Рассчет наценки.
CREATE OR REPLACE FUNCTION calculate_markup()
RETURNS TABLE (
    Product_Name VARCHAR(200),
    Price_Before_Markup numeric (8,4),
    Price_After_Markup numeric (8,4)
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        product.product_name,
        product.product_price,
        product.product_price * (1 + markup / 100.0) AS Price_After_Markup
    FROM
        PRODUCT;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM calculate_markup();