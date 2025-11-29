CREATE TABLE DimAuthor (
    Author_Sk INT IDENTITY(1,1) PRIMARY KEY,
    au_id VARCHAR(11),            -- natural key OLTP
    au_lname VARCHAR(40),
    au_fname VARCHAR(20),
    phone CHAR(12),
    address VARCHAR(40),
    city VARCHAR(20),
    state CHAR(2),
    zip CHAR(5),
);