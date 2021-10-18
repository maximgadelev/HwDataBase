WITH RECURSIVE r2 AS(
SELECT book_id,book_series_id,name
FROM book
where book_series_id=1
UNION
SELECT book.book_id,book.book_series_id,book.name
FROM book
JOIN r2
ON book.book_series_id=r2.book_id


)
SELECT*FROM r2