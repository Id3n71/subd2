CREATE TABLE PRODUCT (
    Product_ID INT,
    Product_Name VARCHAR(200),
    Product_Price numeric (8,4),
   );
   
ALTER TABLE product 
ALTER COLUMN product_ID SET NOT NULL,
ALTER COLUMN product_name SET NOT NULL,
ALTER COLUMN Product_price SET NOT null;

ALTER TABLE product 
ADD CONSTRAINT pk_product PRIMARY KEY (Product_ID)

ALTER TABLE product  
ADD CONSTRAINT uk_product_id UNIQUE (product_ID);


 
INSERT INTO PRODUCT (Product_ID, Product_Name, Product_Price) VALUES
(1, 'Дубовый обеденный стол', 1599),
(2, 'Стул Модерн', 2578),
(3, 'Мягкий диван Семейный уют', 2500),
(4, 'Шкаф Эко-стиль ', 3799),
(5, 'Кровать Бархат', 1100);

select product_name, product_price  from product  