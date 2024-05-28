--Показывать список сделанных заказов за отчетный период времени.
CREATE OR REPLACE FUNCTION show_order_count(
    start_date VARCHAR(200),
    end_date VARCHAR(200)
) 
RETURNS TABLE (
    order_id INT,
    a_id INT,
    buyers_id INT,
    product_id INT,
    order_date VARCHAR(200),
    Status VARCHAR(20),
    completion_date VARCHAR(200)
) AS $$
BEGIN
    RETURN QUERY 
    SELECT Orders.order_id,Orders.a_id, orders.buyers_id, orders.product_id, orders.status, orders.order_date, orders.completion_date  
    from Orders
    WHERE orders.order_date BETWEEN start_date AND end_date;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM show_order_count('2024-04-01', '2024-04-30');