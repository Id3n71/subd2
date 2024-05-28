-- Процедура добавления продаж
CREATE OR REPLACE PROCEDURE add_sale(
    p_Sales_ID INT,
    p_Product_ID INT,
    p_Sales_Total NUMERIC (8,4),
    p_Sales_Date VARCHAR(200),
    p_A_ID INT,
    p_Sales_Quantity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO SALES (Sales_ID, Product_ID, Sales_Total, Sales_Date, A_ID, Sales_Quantity)
    VALUES (p_Sales_ID, p_Product_ID, p_Sales_Total, p_Sales_Date, p_A_ID, p_Sales_Quantity);
END;
$$;

CALL add_sale(8, 1, 1918.8, '2024-05-24', 1, 5);