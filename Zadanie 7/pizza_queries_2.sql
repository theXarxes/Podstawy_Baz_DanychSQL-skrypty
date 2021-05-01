USE PIZZA

--Zadanie 1
select COUNT(pizza) as Total_pizzas
from MENU


--Zadanie 2
select COUNT(distinct country) as Origins
from MENU


--Zadanie 3
select MIN(price) 
as Cheapest_Italian
from MENU
where(country = 'Italy')


--Zadanie 4
select SUM(price) 
as Margherita_Vegetarian
from MENU
where pizza in ( 'margherita', 'vegetarian')



--Zadanie 5

select MIN(price) AS MIN_PRICE ,MAX(price) AS MAX_PRICE,AVG(price) AS AVG_PRICE
from MENU


--Zadanie 6

select COUNT(BASE) as "no of wheat mix"
from MENU
where(base='wholemeal')


--Zadanie 7

select COUNT(pizza) as no_origin
from MENU
where(country IS NULL)


--Zadanie 8 

select round((avg(price)*50)*0.3,2) as profit
from MENU


//Æwiczenie 2 

--Zadanie 1

select RECIPIES.ingredient, ITEMS.type
from  RECIPIES
join ITEMS on RECIPIES.ingredient = ITEMS.ingridient
where(RECIPIES.pizza = 'margherita')

--Zadanie 2

select  ITEMS.ingridient, RECIPIES.pizza
from  RECIPIES
join ITEMS on RECIPIES.ingredient = ITEMS.ingridient
where(ITEMS.type = 'fish')

--Zadanie 3

select  ITEMS.ingridient, RECIPIES.pizza
from  RECIPIES
join ITEMS on RECIPIES.ingredient = ITEMS.ingridient
where(ITEMS.type = 'meat')

--Zadanie 4 ?
DECLARE @pizza varchar(30)
DECLARE @country varchar(10)
select @country = MENU.country, @pizza = MENU.pizza
from MENU
where MENU.pizza ='siciliano'
select MENU.pizza
from  MENU
where MENU.country = @country and MENU.pizza != @pizza


--Zadanie 4 ? z self join 
select A.pizza
from  MENU A, Menu B
where  A.country = B.country 
and B.pizza = 'siciliano' 
and A.pizza != B.pizza



--Zadanie 5 ?

DECLARE @price varchar(10)
select  @price = MENU.price
from MENU
where MENU.pizza ='Quattro Stagioni'
select MENU.pizza
from  MENU
where MENU.price > @price

//Zadanie 5 ? z self join 
select A.pizza, A.price
from  MENU A, Menu B
where  A.price > B.price 
and B.pizza =  'Quattro Stagioni'  


--Zadanie 6
select  ITEMS.ingridient , RECIPIES.pizza
from  RECIPIES
full join ITEMS on RECIPIES.ingredient = ITEMS.ingridient
where(ITEMS.type = 'fish')
order by ITEMS.ingridient

--Zadanie 7

select  distinct ITEMS.type
from  ITEMS
inner join RECIPIES on RECIPIES.ingredient = ITEMS.ingridient  
inner join MENU on MENU.pizza = RECIPIES.pizza
where MENU.country in('Canada', 'Mexico', 'U.S')

--Zadanie 8

select  MENU.pizza
from  MENU
inner join RECIPIES on MENU.pizza = RECIPIES.pizza
inner join ITEMS on RECIPIES.ingredient = ITEMS.ingridient
where(MENU.base = 'wholemeal' and ITEMS.type = 'fruit')



