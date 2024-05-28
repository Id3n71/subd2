--Функция обновления наличия после продажи 
CREATE OR REPLACE FUNCTION update_availability_after_sale()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Availability
    SET Quantity = Quantity - NEW.Sales_Quantity
    WHERE Product_ID = NEW.Product_ID;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

