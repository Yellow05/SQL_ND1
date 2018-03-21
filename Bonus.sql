SELECT News.newsId, News.text, News.date, Comments.text As 'Comment', Comments.date As 'Comment date' 
FROM News
Inner JOIN Comments ON News.newsId = Comments.newsId
GROUP BY `News`.newsId
ORDER BY News.date DESC 
LIMIT 10;