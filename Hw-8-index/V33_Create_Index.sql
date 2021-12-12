create index book_name on book(name)
--индекс для более быстро поиска имени книги
create index author_name_idx on author(name,surname)
--индекс для поиска авторов
create index genre_idx_hash on genre using hash(name)

select book_series.name,count(*) from book
join book_series on book_series.book_series_id = book.book_series_id
Group by book_series.name
--посмотреть сколько книг находится в сериях

select author.name,author.surname,count(*) from author
join readers_author on readers_author.author_id=author.author_id
group by author.name,author.surname
--посмотерть сколько читателей у авторов