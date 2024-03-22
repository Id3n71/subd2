--11) Показать работу с оператором MERGE
create table "Source"
(
 "ID" INT
 , "Name" VARCHAR(25)
);

create table "Target"
(
 "ID" INT
 , "Name" VARCHAR(25)
);

insert into "Target" values
  (1, 'Саморезы')
, (2, 'Ножки')
, (3, 'Петли')
, (9, 'Направляющие')
, (10, 'ДВП');

insert into "Source" values
  (1, 'Саморезы')
, (2, 'Ножки')
, (10, 'ДСП');

merge into "Target" as Target
using "Source" as Source
 on (Target."ID" = Source."ID")
when matched 
 then update
 set "Name" = Source."Name"
when not matched 
 then insert
 values (Source."ID", Source."Name");
 
select * from "Target" t 
