Select Books.* FROM Books;
Select Books.title From Books ORDER BY title;
SELECT Books.authorId, Count(*) AS count FROM Books GROUP BY Books.authorId;