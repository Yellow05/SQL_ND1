-- Įtraukiant autorius kurie neturi knygų 
SELECT `Authors`.*, Count(`Books`.authorId) AS booksCount 
FROM `Authors` LEFT JOIN `Books` 
ON `Authors`.authorId = `Books`.authorId 
GROUP BY `Authors`.name;
-- neįtraukiant autorių kurie neturi knygų 
SELECT `Authors`.*, Count(`Books`.authorId) AS booksCount 
FROM`Authors` LEFT JOIN `Books` 
ON `Authors`.authorId =`Books`.authorId 
GROUP BY `Authors`.name 
having booksCount > 0 ;
-- trinti
DELETE FROM `Authors`
WHERE NOT EXISTS (
   SELECT 1
   FROM   `Books`
   WHERE  `Books`.authorId= `Authors`.authorId
   );