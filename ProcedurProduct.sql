-- Процедура добавления товара 
CREATE OR REPLACE PROCEDURE insert_product(
    p_product_id INT,
    p_product_name VARCHAR,
    p_product_price numeric,
    p_markup INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO PRODUCT (Product_ID, Product_Name, Product_Price, Markup)
    VALUES (p_product_id, p_product_name, p_product_price, p_markup);
END;
$$;

call insert_product(6, 'Стул деревянный', 2599, 5)