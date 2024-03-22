--6) Написать скрипты на добавление внешнего ключа.
alter table "Products" 
add constraint "FK_PriceList_Products"
foreign key ("ID")
references "PriceList" ("ID");