COPY books_table(column1, column2, column3)
FROM 'C:\Users\Riddhi\Desktop\projectssss\book'
DELIMITER ','
CSV HEADER;

COPY books_table(column1, column2, column3)
FROM 'C:\Users\Riddhi\Desktop\projectssss\customers'
DELIMITER ','
CSV HEADER;

COPY books_table(column1, column2, column3)
FROM 'C:\Users\Riddhi\Desktop\projectssss\orders'
DELIMITER ','
CSV HEADER;


create table for books
CREATE TABLE Books (
Book_ID SERIAL PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(50),	
Published_Year INT,	
Price NUMERIC(10,2),
Stock INT
);

create table for customers
CREATE TABLE Customers (
Customer_ID SERIAL PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),	
Phone VARCHAR(100),	
City VARCHAR(50),
Country VARCHAR(150)
);

create table Orders
CREATE TABLE Orders (
   Order_ID SERIAL PRIMARY KEY,
   Customer_ID INT REFERENCES Customers(Customer_ID),
   Book_ID INT REFERENCES Books(Book_ID),
   Order_Date DATE,
   Quantity INT,
   Total_Amount NUMERIC(10, 2)
   );

-- 1) Retrieve all books in the "Fiction" genre:
SELECT * FROM Books
WHERE Genre='Fiction';

--2) Find books published after the year 1950:
SELECT * FROM Books
WHERE Published_year>1950;

--3) List all customers from the Canada:
SELECT * FROM Customers
WHERE country='Canada';

--4) Show orders placed in November 2023:
SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5) Retrieve the total stock of books available:
SELECT SUM(stock) AS Total_Stock
FROM Books;

--6) Find the details of the most expensive book:
SELECT * FROM Books
ORDER BY Price DESC;

--7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM Orders
WHERE quantity>1;

--8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders
WHERE total_amount>20;

--9)List all genres available in the Books table:
SELECT DISTINCT genre
FROM Books;

--10)Find the book with the lowest stock:
SELECT * FROM Books
ORDER BY stock DESC;

--11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount) AS Revenue
FROM Orders;

--12)List customers who have placed at least 2 orders:
SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id
HAVING COUNT(Order_id) >=2;

--13)Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS Total_Books_Sold
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY b.Author;

--14) Calculate the stock remaining after fulfilling all orders:
SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity
FROM books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id;

