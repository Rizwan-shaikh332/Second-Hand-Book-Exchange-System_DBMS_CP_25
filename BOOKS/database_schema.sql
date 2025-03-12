CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerID INT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Condition VARCHAR(50),
    ISBN VARCHAR(20) UNIQUE,
    PriceOrPoints DECIMAL(10,2),
    Description TEXT,
    Location VARCHAR(255),
    Status VARCHAR(50) CHECK (Status IN ('Available', 'Borrowed', 'Reserved', 'Sold')),
    AddedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (OwnerID) REFERENCES Users(UserID) ON DELETE CASCADE
);
