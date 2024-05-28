--Процедура добавления наличия товара 
CREATE OR REPLACE PROCEDURE add_availability(
    p_A_ID INT,
    p_Product_ID INT,
    p_Quantity INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Availability (A_ID, Product_ID, Quantity)
    VALUES (p_A_ID, p_Product_ID, p_Quantity);
END;
$$;

CALL add_availability(6, 6, 56);