CREATE TABLE Availability (
    Product_ID INT,
    Product_Price numeric (8,4),
    Quantity INT 
   );
   
ALTER TABLE Availability 
ALTER COLUMN product_ID drop NOT NULL,
ALTER COLUMN Product_price drop NOT NULL,
ALTER COLUMN Quantity drop NOT null;

ALTER TABLE Availability 
ADD CONSTRAINT pk_Availability PRIMARY KEY (Quantity)

ALTER TABLE availability 
ADD CONSTRAINT fk_avail_product FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
ADD CONSTRAINT fk_avail_price FOREIGN KEY (Product_Price) REFERENCES Product(Product_price);


INSERT INTO availability  (Product_ID,Product_Price,quantity) values
(1,1599,20),
(2,2578,47),
(3,2500,56),
(4,3799,2),
(5,1100,71);
insert into availability  select product_id, product_price  from product ;


INSERT INTO availability (Product_ID, Product_Price, Quantity)
SELECT Product_ID, Product_Price, (20)
FROM Product;


UPDATE availability
SET Quantity = 91
where product_id =5 ;

select *from availability a ;

