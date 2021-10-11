WITH cte_of_book_age AS(
select name,(case
			 when date_of_release::integer<2000
			 then 'Book of 20 century and older'
			 else 'Book of 21 century'
			end)age_of_book from book
)
SELECT *FROM cte_of_book_age
--узнать возраст книги