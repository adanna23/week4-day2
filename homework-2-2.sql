-- Insertion of data into database tables

--Insert for customer table
insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values(
	1,
	'Adanna'
	'Eleje'
	'26 east main st, Norton, MA 0276'
	'4242-4242-4242-4242 555 06/26'
);

--insert statement for brand
INSERT INTO brand(
	seller_id,
	brand_name,
	contact_number,
	address
)VALUES(
	1,
	'Hello World Theatre',
	'655-565-4674',
	'234 E Mayan St Newark, NJ'
);

-- Insert statement for movie data
INSERT INTO movie(
	movie_id,
	customer_id,
	movie_hour,
	movie_name
)VALUES(
	1,
	1,
	
	'Captain America:The winter soldier'
);

-- Insert Statement for ticket data
INSERT INTO ticket(
	ticket_id,
	order_date,
	sub_total,
	total_cost,
	movie_id
) VALUES(
	1,
	
	40.00,
	43.50,
	1
); 
-- Insert statement for concession data
INSERT INTO concession(
	item_id,
	amount,
	prod_name,
	seller_id,
	customer_id
)VALUES(
	1,
	20.00,
	'Movie theatre',
	1,
	1
);

-- Insert Statement for seat data
INSERT INTO seat(
	seat_id,
	movie_name,
	ticket_id
)VALUES(
	1,
	'Captain America:The winter soldier',
	1
);

select *
from brand;
