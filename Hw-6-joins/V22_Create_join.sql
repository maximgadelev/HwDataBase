insert into book (name,date_of_release) values('Carrie','1974') ;
insert into authors_book values (1,7);
insert into book_series (name)values ('The magic')
insert into books_genre values (7,1)

select readers_author.reader_id,author.name,author.surname
from readers_author
INNER JOIN author
ON readers_author.author_id=author.author_id
--запрос для получения имен и фамилий авторов,на которых подписался читатель

select books_genre.book_id,genre.name
from books_genre
INNER JOIN genre
ON books_genre.genre_id=genre.genre_id
--запрос для получения названия жанра для книжек

select book.book_id,book.name,book_series.name,book_series.book_series_id
from book
LEFT JOIN book_series
on book.book_series_id=book_series.book_series_id
--узнать,в какой серии находится книга,либо же вовсе не находится,нулл тоже выведет

select author.name,author.surname,author.author_id,readers_author.reader_id
from author
LEFT JOIN readers_author
on readers_author.author_id=author.author_id
--узнать читателей авторов и есть ли они вовсе

SELECT*FROM readers_book
right join book on
book.book_id=readers_book.book_id
--узнать подписки людей на книги,у книг может и не быть читателей,поэтому right

SELECT*FROM book
right join book_series on
book.book_series_id=book_series.book_series_id
--узнать книги в серии,но их может не быть,если автор только заанонсил ее

SELECT*FROM book
full join book_series on
book.book_series_id=book_series.book_series_id
--узнаем полную информацию о книгах и их сериях

select * from book cross join book_series
--просто пример кросс джоина,кейс не придумал

select * from genre natural join books_genre
--узнать жанр(имя) книги по айди книги

select * from authors_book natural join author
--узнать автора книги(имя,фамиилии) по айди книги

select e.name book,b.book_series_id book_series_id
FROM book e
JOIN book b on b.book_series_id=e.book_id
--иерархия книг по их серии

select e.genre_id genre_id,b.book_id book_id
FROM books_genre e
JOIN books_genre b on b.genre_id=e.book_id
--иерархия жанра и книг по айди

select b.name
from book_series b
where exists(SELECT* from book bb where bb.book_id=b.book_series_id)
--получить все существующие серии книг,в которых имеются книги

select b.name,b.surname
from author b
where exists(SELECT* from readers_author bb where bb.reader_id=b.author_id)
--получить всех авторов,у которых есть читатели

select b.name,b.surname
from author b
where not exists(SELECT* from readers_author bb where bb.reader_id=b.author_id)
--получить авторов у которых нет читателей

select b.name
from book_series b
where not exists(SELECT* from book bb where bb.book_id=b.book_series_id)
--получить айди серий,у которых еще нет книг