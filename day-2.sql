
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table brand (
	seller_id SERIAL primary key,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);
-- movie table creation
create table movie (
	movie_id SERIAL primary key,
	customer_id INTEGER NOT NULL,
	foreign key (customer_id) references customer(customer_id),
	movie_name VARCHAR(150)
	
);

create table ticket (
	ticket_id SERIAL primary key,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	movie_id INTEGER NOT NULL,
	foreign key (movie_id) references movie(movie_id)
);

create table seat (
	seat_id SERIAL primary key,
	movie_name INTEGER,
	ticket_id INTEGER NOT NULL,
	foreign key (ticket_id) references ticket(ticket_id)
);
create table concession (
	item_id SERIAL primary key,
	amount NUMERIC (5,2),
	prod_name VARCHAR(100),
	customer_id INTEGER NOT NULL,
	seller_id INTEGER NOT NULL,
	foreign key (customer_id) references customer(customer_id),
	foreign key (seller_id) references brand(seller_id) 	
);

select *
from concession;

