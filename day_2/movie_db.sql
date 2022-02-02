CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
  	type VARCHAR(100),
  	price NUMERIC(5,2),
  	item_name VARCHAR(100)
 );

CREATE TABLE ticket(
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  movie_id INTEGER NOT NULL
);


CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
  	rating VARCHAR(100),
  	FOREIGN KEY (ticket_id) REFERENCES ticket (ticket_id)
  
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
  	first_name VARCHAR(100),
  	last_name VARCHAR(100),
  	email VARCHAR(100),
  	FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
  
);



