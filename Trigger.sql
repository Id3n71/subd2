--Триггер обновления наличия 
CREATE TRIGGER update_availability_after_sale_trigger
AFTER INSERT ON SALES
FOR EACH ROW
EXECUTE FUNCTION update_availability_after_sale();