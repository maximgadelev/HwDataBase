WITH RECURSIVE r1 AS(
SELECT reader_id,author_id
FROM readers_author
where reader_id=1
UNION
SELECT readers_author.reader_id,readers_author.author_id
FROM readers_author
JOIN r1
ON readers_author.reader_id=r1.author_id


)
SELECT*FROM r1