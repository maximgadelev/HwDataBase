CREATE VIEW book_release_check
AS SELECT * from book
WHERE date_of_release='1987'
WITH LOCAL CHECK OPTION;