use pizza

-- zad1

select distinct MENU.country, round(avg(MENU.price),4) as avg_price
from MENU
where country is not null 
GROUP BY country;

-- zad2

select distinct country, max(price) as max_price
from MENU
where country is not null 
GROUP BY country;


-- zad3

select distinct country, min(price) as min_price
from MENU
where country is not null 
GROUP BY country;

-- zad4

select distinct country, round(avg(price),4) as avg_price
from MENU
where country is not null 
GROUP BY country
having COUNT(country)>1;


-- zad5 

select distinct country, round(avg(price),4) as avg_price
from MENU
where country like '%i%'
GROUP BY country



-- zad6 

select distinct country, min(price) as min_price
from MENU
where country is not null and price < 7.50
GROUP BY country;

--Æwiczenie 2 

--zad 1
 
select  A.pizza, A.price
from MENU A, MENU B
where(B.country = 'Italy')
group by A.pizza, A.price
having  A.price > max(B.price)



--zad 2
 
select distinct RECIPIES.pizza
from RECIPIES
where RECIPIES.ingredient in ( select ITEMS.ingridient 
								from ITEMS 
								where type = 'meat')

--zad 3
 
select distinct R1.ingredient, R1.pizza, R1.amount
from RECIPIES as R1 
where R1.ingredient in (select distinct R2.ingredient
								from RECIPIES as R2
								group by ingredient
								having R1.amount >= max(R2.amount) )
 
 --zad 4
select distinct RECIPIES.ingredient
from RECIPIES
group by RECIPIES.ingredient
having COUNT(pizza)>1

 --zad 5
select distinct RECIPIES.pizza
from RECIPIES
where RECIPIES.ingredient in ( select ITEMS.ingridient 
								from ITEMS 
								where type = 'meat')

								
 --zad 6

select  ITEMS.ingridient
from ITEMS
where  NOT EXISTS ( select 1
					from RECIPIES 
					where RECIPIES.ingredient = ITEMS.ingridient)

 --zad 7
 
select distinct REC1.ingredient
from RECIPIES as REC1
where REC1.ingredient in ( select REC2.ingredient
							from RECIPIES as REC2
							group by ingredient
							having count(ingredient)>1)
--zad 8


select M1.pizza, M1.price
from MENU as M1
where M1.price < (select M2.price
				  from MENU as M2 
				  where M2.pizza = 'napoletana') 
and   M1.price > (select M3.price 
				  from MENU as M3 
				  where M3.pizza = 'garlic')


--zad 9 
						  
SELECT top 1 RECIPIES.pizza
FROM RECIPIES 
GROUP BY pizza 
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC






--zad 10

select  distinct ITEMS.type
from ITEMS
where ITEMS.ingridient in (select RECIPIES.ingredient
						  from RECIPIES
						  where RECIPIES.pizza in (select MENU.pizza
												  from MENU
												  where MENU.price = (select max(MENU.price)
																	  from MENU))) 