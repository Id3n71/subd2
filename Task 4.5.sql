--5) Написать скрипты на добавление первичных ключей.
alter table "Products"
add constraint "PK_Products"
primary key ("ID");

alter table "PriceList" 
add constraint "PK_PriceList"
primary key ("ID");