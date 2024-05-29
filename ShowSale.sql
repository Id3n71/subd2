--Показывать количество проданной мебели выбранного образца за отчетный период времени.
CREATE OR REPLACE FUNCTION show_sales_count(
    IN start_date_param VARCHAR,
    IN end_date_param VARCHAR
)
RETURNS TABLE (Product_Name VARCHAR, Sales_Count INT) AS $$
BEGIN
    RETURN QUERY
    SELECT p.Product_Name, COUNT(s.Sales_ID)::INTEGER AS Sales_Count
    FROM Product p
    JOIN Sales s ON p.Product_ID = s.Product_ID
    WHERE s.Sales_Date BETWEEN start_date_param AND end_date_param
    GROUP BY p.Product_Name;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM show_sales_count('2024-04-01', '2024-05-15');