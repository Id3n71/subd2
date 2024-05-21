CREATE TABLE ORDERS (
    Order_ID INT,
    Buyers_ID INT,
    Product_ID INT,
    Order_Date DATE,
    Total numeric (8,4),
    Status VARCHAR(20),
    Completion_date DATE,
    Markup INT 
   );

ALTER TABLE orders 
ALTER COLUMN order_ID SET NOT NULL,
ALTER COLUMN Buyers_ID SET NOT NULL,
ALTER COLUMN Product_ID SET NOT NULL,
ALTER COLUMN Order_Date SET NOT NULL,
ALTER COLUMN Total SET NOT null;

ALTER TABLE orders 
ADD CONSTRAINT pk_orders PRIMARY KEY (Order_ID);

ALTER TABLE orders 
ADD CONSTRAINT fk_orders_buyers FOREIGN KEY (buyers_ID) REFERENCES Buyers(buyers_ID),
ADD CONSTRAINT fk_orders_product FOREIGN KEY (product_ID) REFERENCES Product(product_ID);

ALTER TABLE orders  
ADD CONSTRAINT uk_orders_id UNIQUE (order_ID);

INSERT INTO orders  (Order_ID, buyers_id , product_id,order_date,total,status,completion_date,markup) VALUES
(1, 1, 1,'2024-04-15',1998.75,'Готов','2024-04-25', 25),
(2, 2, 2,'2024-04-01', 2835.8, 'В работе','2024-03-10', 10),
(3, 3, 3,'2024-03-02', 3325, 'Готов','2024-03-12', 33),
(4, 4, 4,'2024-05-17', 3988.95, 'Готов','2024-05-27',5 ),
(5, 5, 5,'2024-01-11', 1127, 'Готов','2024-01-21', 27);


select * from orders o 

delete from orders 

SELECT *
FROM orders
WHERE order_date BETWEEN '2024-04-01' AND '2024-04-30';

SELECT Order_ID, total * (1 + markup / 100) AS adjusted_total
FROM orders;

