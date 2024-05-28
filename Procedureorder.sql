-- процедура добавления заказа
CREATE OR REPLACE PROCEDURE add_order(
    p_Order_ID INT,
    p_A_ID INT,
    p_Buyers_ID INT,
    p_Product_ID INT,
    p_Order_Date Varchar(200),
    p_Total numeric (8,4),
    p_Status VARCHAR(20),
    p_Completion_date Varchar(200)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO ORDERS (Order_ID, A_ID, Buyers_ID, Product_ID, Order_Date, Total, Status, Completion_date)
    VALUES (p_Order_ID, p_A_ID, p_Buyers_ID, p_Product_ID, p_Order_Date, p_Total, p_Status, p_Completion_date);
END;
$$;

CALL add_order(6, 6, 2, 6, '2024-05-24', 2728.95, 'Готов', '2024-06-01');