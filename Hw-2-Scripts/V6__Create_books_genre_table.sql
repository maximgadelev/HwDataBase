CREATE TABLE books_genre(
	book_id INT NOT NULL,
	genre_id INT NOT NULL,
	CONSTRAINT book_id  FOREIGN KEY (book_id ) REFERENCES book  (book_id),
	CONSTRAINT genre_id FOREIGN KEY (genre_id ) REFERENCES genre (genre_id )
	
)
