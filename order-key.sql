ALTER TABLE orders 
ADD CONSTRAINT pk_orders PRIMARY KEY (Order_ID);

ALTER TABLE orders 
ADD CONSTRAINT fk_orders_avail FOREIGN KEY (A_ID) REFERENCES availability(A_ID),
ADD CONSTRAINT fk_orders_buyers FOREIGN KEY (buyers_ID) REFERENCES Buyers(buyers_ID);