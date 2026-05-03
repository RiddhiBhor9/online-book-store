# online-book-store
# 📚 Online Book Store Database (SQL Project)

## 📌 Project Overview

This project is a **PostgreSQL-based Online Book Store Database System**. It includes database creation, data import, and analytical SQL queries to manage books, customers, and orders.

The goal of this project is to demonstrate **database design, data handling, and SQL query skills** for real-world business scenarios.

---

## 🗂️ Database Structure

The project consists of three main tables:

### 1. **Books**

* Book_ID (Primary Key)
* Title
* Author
* Genre
* Published_Year
* Price
* Stock

### 2. **Customers**

* Customer_ID (Primary Key)
* Name
* Email
* Phone
* City
* Country

### 3. **Orders**

* Order_ID (Primary Key)
* Customer_ID (Foreign Key)
* Book_ID (Foreign Key)
* Order_Date
* Quantity
* Total_Amount

---

## ⚙️ Features

* 📥 Import data from CSV files using `COPY` command
* 🏗️ Create relational database with constraints
* 🔗 Establish relationships using foreign keys
* 📊 Perform real-world business queries

---

## 📊 SQL Queries Included

This project includes multiple analytical queries such as:

* Retrieve books by genre
* Filter books based on year
* Customer location analysis
* Monthly order tracking
* Total stock and revenue calculation
* Identify most expensive book
* Customer purchase behavior
* Author-wise sales analysis
* Stock tracking after orders

---

## 🚀 How to Run

1. Install PostgreSQL
2. Open pgAdmin or SQL shell
3. Run the SQL file:

```sql
\i online_book.sql
```

4. Update file paths in COPY command if needed:

```sql
FROM 'your/local/path/books.csv'
```

---

## 📁 Data Source

The dataset is imported using CSV files for:

* Books
* Customers
* Orders

---

## 💡 Use Cases

* Database design practice
* SQL interview preparation
* Data analysis learning
* Mini project for portfolio

---

## 🛠️ Technologies Used

* PostgreSQL
* SQL

---

## 👨‍💻 Author

**Riddhi Bhor**
Data Analytics & SQL Enthusiast



