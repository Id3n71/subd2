ALTER TABLE sales 
ADD CONSTRAINT pk_sales PRIMARY KEY (Sales_ID)

ALTER TABLE sales 
ADD CONSTRAINT fk_sales_avail FOREIGN KEY (A_ID) REFERENCES availability(A_ID);
