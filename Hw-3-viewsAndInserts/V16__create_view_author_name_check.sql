CREATE VIEW author_name_check
AS SELECT * from author
WHERE name='Stephen'
WITH LOCAL CHECK OPTION;