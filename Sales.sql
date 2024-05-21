CREATE TABLE SALES (
    Sales_ID INT,
    Product_ID INT,
    Sales_Total numeric (8,4),
    Sales_Date DATE
   );
   
ALTER TABLE sales  
ALTER COLUMN product_ID SET NOT NULL,
ALTER COLUMN Sales_ID SET NOT NULL,
ALTER COLUMN Sales_total SET NOT NULL,
ALTER COLUMN Sales_date SET NOT null;

ALTER TABLE sales 
ADD CONSTRAINT pk_sales PRIMARY KEY (Sales_ID)

ALTER TABLE sales 
ADD CONSTRAINT fk_sales_product FOREIGN KEY (product_ID) REFERENCES Product(product_ID);

ALTER TABLE sales  
ADD CONSTRAINT uk_sales_id UNIQUE (sales_ID);

INSERT INTO SALES (Sales_ID, Product_ID, Sales_Total, Sales_Date) VALUES
(1, 1, 150.00, '2024-05-15'),
(2, 3, 450.00, '2024-05-16'),
(3, 2, 100.00, '2024-05-17'),
(4, 4, 300.00, '2024-05-18'),
(5, 5, 600.00, '2024-05-19');

select * from sales s 

UPDATE sales 
SET sales_date = '2024-03-07'
where product_id =5 ;

delete from sales s 

SELECT COUNT(*) AS Total_Sales
FROM SALES
WHERE Sales_Date BETWEEN '2024-05-01' AND '2024-05-30';

