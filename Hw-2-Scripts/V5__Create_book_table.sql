CREATE TABLE book(
	book_id serial PRIMARY KEY,
	book_series_id INT,
	name VARCHAR(255) NOT NULL,
	date_of_release VARCHAR(255) NOT NULL,
	CONSTRAINT book_series_id FOREIGN KEY (book_series_id) REFERENCES book_series (book_series_id)
	
)