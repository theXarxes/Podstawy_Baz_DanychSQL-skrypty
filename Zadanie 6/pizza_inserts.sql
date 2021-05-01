CREATE DATABASE PIZZA

USE PIZZA

CREATE TABLE MENU(
	pizza nvarchar(30) CONSTRAINT	menu_PK PRIMARY KEY,
	price float,
	country nvarchar(10),
	base nvarchar(20)
);

CREATE TABLE ITEMS(
	ingridient nvarchar(30) CONSTRAINT	item_PK PRIMARY KEY,
	type nvarchar(20)
); 

CREATE TABLE RECIPIES(
	pizza nvarchar(30) CONSTRAINT	recepiesPizza_FK Foreign key references MENU(pizza),
	ingredient nvarchar(30) CONSTRAINT	recepiesIngredient_FK Foreign key references ITEMS(ingridient),
	amount int
	CONSTRAINT recepies_PK PRIMARY KEY (pizza, ingredient)

	
);


USE PIZZA


insert into MENU values ('americano','7.40','U.S.','wholemeal')
insert into MENU values ('frutti di mare','	9.20','Italy','wholemeal')
insert into MENU values ('funghi','7.30','Italy','wholemeal')
insert into MENU (pizza, price, base) values ('garlic','3.50','wholemeal')
insert into MENU (pizza, price, base) values ('ham','7.30','white flour')
insert into MENU values ('hawaiian','7.40','Canada','wholemeal')
insert into MENU values ('margherita','6.20','Italy','white flour')
insert into MENU values ('mexicano','7.40','Mexico','white flour')
insert into MENU values ('napoletana','7.40','Italy','white flour')
insert into MENU values ('quattro stagioni','7.80','Italy','wholemeal')
insert into MENU values ('siciliano','7.40','Italy','wholemeal')
insert into MENU (pizza, price, base) values ('special','9.90', 'white flour')
insert into MENU (pizza, price, base) values ('vegetarian','7.40', 'wholemeal')
insert into MENU values ('viennese','7.40','Italy','white flour')



insert into ITEMS values ('anchovies','fish')
insert into ITEMS values ('bacon','meat')
insert into ITEMS values ('capsicum','veg')
insert into ITEMS values ('cheese','dairy')
insert into ITEMS values ('chilli','spice')
insert into ITEMS values ('egg','dairy')
insert into ITEMS values ('garlic','spice')
insert into ITEMS values ('German sausage','meat')
insert into ITEMS values ('ham','meat')
insert into ITEMS values ('mushroom','veg')
insert into ITEMS values ('olives','veg')
insert into ITEMS values ('onion','veg')
insert into ITEMS values ('peas','veg')
insert into ITEMS values ('pepperoni','meat')
insert into ITEMS values ('pineapple','fruit')
insert into ITEMS values ('prawn','fish')
insert into ITEMS values ('salami','meat')
insert into ITEMS values ('seafood','fish')
insert into ITEMS values ('spice','spice')
insert into ITEMS values ('tomato','veg')



insert into RECIPIES values ('americano','pepperoni','75')
insert into RECIPIES values ('americano','salami','120')
insert into RECIPIES values ('americano','spice','10')

insert into RECIPIES values ('frutti di mare','seafood','200')
insert into RECIPIES values ('frutti di mare','spice','5')

insert into RECIPIES values ('funghi','mushroom','100')
insert into RECIPIES values ('funghi','spice','5')

insert into RECIPIES values ('garlic','garlic','25')
insert into RECIPIES values ('garlic','spice','10')

insert into RECIPIES values ('ham','ham','150')
insert into RECIPIES values ('ham','spice','5')

insert into RECIPIES values ('hawaiian','ham','100')
insert into RECIPIES values ('hawaiian','pineapple','100')
insert into RECIPIES values ('hawaiian','spice','5')

insert into RECIPIES values ('margherita','cheese','120')
insert into RECIPIES values ('margherita','spice','5')

insert into RECIPIES values ('mexicano','capsicum','75')
insert into RECIPIES values ('mexicano','chilli','25')
insert into RECIPIES values ('mexicano','mushroom','50')
insert into RECIPIES values ('mexicano','onion','75')
insert into RECIPIES values ('mexicano','spice','20')

insert into RECIPIES values ('napoletana','anchovies','100')
insert into RECIPIES values ('napoletana','olives','75')
insert into RECIPIES values ('napoletana','spice','10')

insert into RECIPIES values ('quattro stagioni','anchovies','25')
insert into RECIPIES values ('quattro stagioni','ham','75')
insert into RECIPIES values ('quattro stagioni','mushroom','50')
insert into RECIPIES values ('quattro stagioni','olives','50')
insert into RECIPIES values ('quattro stagioni','spice','10')

insert into RECIPIES values ('siciliano','anchovies','50')
insert into RECIPIES values ('siciliano','capsicum','75')
insert into RECIPIES values ('siciliano','olives','50')
insert into RECIPIES values ('siciliano','onion','50')
insert into RECIPIES values ('siciliano','spice','15')

insert into RECIPIES values ('special','anchovies','25')
insert into RECIPIES values ('special','bacon','25')
insert into RECIPIES values ('special','capsicum','25')
insert into RECIPIES values ('special','cheese','25')
insert into RECIPIES values ('special','egg','25')
insert into RECIPIES values ('special','German sausage','25')
insert into RECIPIES values ('special','ham','25')
insert into RECIPIES values ('special','mushroom','25')
insert into RECIPIES values ('special','olives','25')
insert into RECIPIES values ('special','onion','25')
insert into RECIPIES values ('special','peas','25')
insert into RECIPIES values ('special','pineapple','25')
insert into RECIPIES values ('special','salami','25')
insert into RECIPIES values ('special','seafood','25')
insert into RECIPIES values ('special','spice','10')
insert into RECIPIES values ('special','tomato','25')

insert into RECIPIES values ('vegetarian','capsicum','50')
insert into RECIPIES values ('vegetarian','mushroom','50')
insert into RECIPIES values ('vegetarian','onion','50')
insert into RECIPIES values ('vegetarian','peas','50')
insert into RECIPIES values ('vegetarian','spice','5')
insert into RECIPIES values ('vegetarian','tomato','50')

insert into RECIPIES values ('viennese','German sausage','150')
insert into RECIPIES values ('viennese','spice','5')
