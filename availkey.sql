ALTER TABLE Availability 
ADD CONSTRAINT pk_Availability PRIMARY KEY (A_ID);

ALTER TABLE availability 
ADD CONSTRAINT fk_avail_product FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID);