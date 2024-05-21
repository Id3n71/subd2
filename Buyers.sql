CREATE TABLE BUYERS (
    Buyers_ID INT,
    Buyers_Name VARCHAR(200),
    Buyers_PhoneNumber INT
   );
   
ALTER TABLE buyers 
ALTER COLUMN Buyers_ID SET NOT NULL,
ALTER COLUMN Buyers_Name SET NOT NULL,
ALTER COLUMN Buyers_PhoneNumber SET NOT null;

ALTER TABLE buyers 
ADD CONSTRAINT pk_buyers PRIMARY KEY (buyers_ID)

ALTER TABLE buyers  
ADD CONSTRAINT uk_buyers_id UNIQUE (buyers_ID),
ADD CONSTRAINT uk_buyers_phone UNIQUE (Buyers_PhoneNumber);

INSERT INTO BUYERS (Buyers_ID, Buyers_Name, Buyers_PhoneNumber) VALUES
(1, 'Иванов Иван', '123-456-7890'),
(2, 'Петров Петр', '456-789-0123'),
(3, 'Сидоров Сидор', '789-012-3456'),
(4, 'Александров Александр', '012-345-6789'),
(5, 'Егоров Егор', '234-567-8901');

select * from buyers b 
