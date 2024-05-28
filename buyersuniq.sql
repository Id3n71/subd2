ALTER TABLE buyers  
ADD CONSTRAINT uk_buyers_id UNIQUE (buyers_ID),
ADD CONSTRAINT uk_buyers_phone UNIQUE (Buyers_PhoneNumber);