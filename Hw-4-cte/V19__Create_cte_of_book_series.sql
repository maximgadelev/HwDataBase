WITH cte_of_book_series AS(
	SELECT name,(case
    when book_series_id is NULL
				then'Dont have series'
				else 'Have series'
			   end)series from book
)
SELECT * From cte_of_book_series
--определить если книга в серии или нет