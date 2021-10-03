CREATE TABLE authors_book(
	author_id INT NOT NULL,
	book_id INT NOT NULL,
	CONSTRAINT author_id  FOREIGN KEY (author_id ) REFERENCES author (author_id),
	CONSTRAINT book_id  FOREIGN KEY (book_id  ) REFERENCES book (book_id )
)