-- Drops table if exists and creates BooksAuthors to wire Books and Authors tabels
DROP TABLE IF EXISTS `BooksAuthors`;
CREATE TABLE `BooksAuthors` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  PRIMARY KEY (`authorId`, `bookId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- authorId in Books not needed anymore
ALTER TABLE Books
DROP COLUMN authorId;
-- new data
INSERT INTO `BooksAuthors` VALUES 
(1,1),(2,3),(4,5),(6,7),(7,3),(4,14),(6,13),(7,1);

-- select all books with authors, if more than one author they are separated with ','.
SELECT `Books`.`title`, GROUP_CONCAT(`Authors`.`name`) AS 'Author'
FROM Books
LEFT JOIN `BooksAuthors` ON `Books`.bookId = `BooksAuthors`.bookId
LEFT JOIN `Authors` ON `BooksAuthors`.authorId = `Authors`.authorId
GROUP BY `Books`.`title`;

ALTER TABLE Books CONVERT TO CHARACTER SET utf8;
INSERT INTO Books (`title`, `year`) VALUES ("Žalia Mazgotė", 2001);


