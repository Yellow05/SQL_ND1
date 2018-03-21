DROP TABLE IF EXISTS `BooksAuthors`;
CREATE TABLE `BooksAuthors` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  PRIMARY KEY (`authorId`, `bookId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- authorId in Books not needed anymore
ALTER TABLE Books
DROP COLUMN authorId;

ALTER TABLE Books CONVERT TO CHARACTER SET utf8;