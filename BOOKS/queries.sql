SELECT * FROM Books WHERE Status = 'Available';
SELECT Title, Author FROM Books WHERE OwnerID = 1;
SELECT Title, Author, Location FROM Books WHERE Location = 'Delhi';
UPDATE Books SET Status = 'Borrowed' WHERE BookID = 2;
DELETE FROM Books WHERE BookID = 3;
