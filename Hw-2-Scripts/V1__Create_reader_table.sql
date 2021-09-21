CREATE TABLE reader(
	reader_id INT NOT NULL PRIMARY KEY,
        login VARCHAR(50) NOT NULL,
        password VARCHAR(50) NOT NULL,
	name VARCHAR(255) NOT NULL
)