CREATE TABLE authors_book(
	book_id INT NOT NULL,
	reader_id INT NOT NULL,
	CONSTRAINT book_id  FOREIGN KEY (book_id ) REFERENCES book  (book_id),
	CONSTRAINT reader_id   FOREIGN KEY (reader_id  ) REFERENCES reader (reader_id )
)