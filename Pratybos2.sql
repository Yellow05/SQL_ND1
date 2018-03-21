INSERT INTO Authors (name) VALUES ('Liudas Kazalupskis'), ('And another one');

INSERT INTO Books (authorId, title, year) VALUES 
(8, 'Super duper', 2018), (9, 'Realy old one', 1937), (8, 'Good', 2001);

UPDATE Books SET authorId = 9 WHERE bookId = 14;
