-- Процедура для добавления покупателя 
CREATE OR REPLACE PROCEDURE insert_buyer(
    p_buyers_id INT,
    p_buyers_name VARCHAR,
    p_buyers_phone_number VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO BUYERS (Buyers_ID, Buyers_Name, Buyers_PhoneNumber)
    VALUES (p_buyers_id, p_buyers_name, p_buyers_phone_number);
END;
$$;

CALL insert_buyer(6, 'Дмитриев Дмитрий', '125-456-780');
