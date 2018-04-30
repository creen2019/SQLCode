use scratch;
create table customers(
	cust_id int not null,
	lastname varchar(200),
	firstname varchar(200)
	PRIMARY KEY(cust_id)
	);
	
create table products(
	product_id int not null,
	name varchar(200),
	PRIMARY KEY(product_id)
	);
	
create table mapping(
	cust_id int not null,
	product_id int not null,
	FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
	FOREIGN KEY(product_id) REFERENCES products(product_id)
	);
	
insert into customers values(1, 'Henry', 'John');
insert into customers values(2, 'Smith', 'Adam');
insert into products values(1, 'Savings');
insert into products values(2, 'Credit Card');
insert into mapping values(1, 1);
insert into mapping values(1, 2);
insert into mapping values(2, 2);