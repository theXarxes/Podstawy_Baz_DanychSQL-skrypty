use PIZZA

select * from MENU order by pizza;

select * from MENU  order by price desc, pizza asc;

select distinct price from MENU;

select * from MENU where (price<7 and country='Italy');

select * from MENU where (country != 'Italy' and country != 'U.S.' or country is NULL);

select * from MENU where (pizza = 'vegetarian' or pizza = 'americano' or pizza = 'mexicano' or pizza = 'garlic');

select * from MENU where (price>6 and price<7);

select * from MENU where (SUBSTRING(pizza,len(pizza)-2,3) = 'ano');

select * from MENU where (country is not NULL);

select distinct amount from  RECIPIES where(ingredient = 'spice') order by amount asc;