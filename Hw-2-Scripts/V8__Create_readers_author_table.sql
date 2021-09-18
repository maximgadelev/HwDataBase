CREATE TABLE readers_author(
	author_id INT NOT NULL,
	reader_id INT NOT NULL,
	CONSTRAINT author_id  FOREIGN KEY (author_id) REFERENCES author (author_id),
	CONSTRAINT reader_id   FOREIGN KEY (reader_id  ) REFERENCES reader (reader_id )
)