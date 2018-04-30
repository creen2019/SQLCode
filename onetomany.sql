use scratch;
create table authors(
	author_id int,
	lastname varchar(200),
	firstname varchar(200),
	
	PRIMARY KEY(author_id)
	);
	
create table books(
	book_id int not null,
	title varchar(200),
	author_id int,
	
	FOREIGN KEY(author_id) REFERENCES authors(author_id),
	PRIMARY KEY(book_id)
	);
	
insert into authors values(1, 'Henry', 'John');
insert into authors values(2, 'Smith', 'Adam');
insert into authors values(3, 'Johnson', 'Mary');
insert into authors values(4, 'Bailey', 'Harry');
insert into books values(1, 'A Database Primer', 1);
insert into books values(2, 'Building a Datawarehouse', 1);
insert into books values(3, 'Teach Yourself SQL', 1);
insert into books values(4, '101 Exotic Recipes', 2);
insert into books values(5, 'Visiting Europe', 4);