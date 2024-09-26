--7) Написать скрипты на добавление ограничения уникальности для тех полей, где это необходимо
alter table "Products"
add constraint "U_Products_Name"
unique ("ID");

alter table "PriceList" 
add constraint "U_PriceLIst_Name"
unique ("ID");

