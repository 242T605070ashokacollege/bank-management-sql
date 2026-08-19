CREATE DATABASE BankManagement;
USE BankManagement;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200)
);
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    transaction_date DATE,
    FOREIGN KEY (account_id)
        REFERENCES Accounts(account_id)
);
INSERT INTO Customers
(customer_id, name, phone, email, address)
VALUES
(1, 'Rahul Kumar', '9876543210', 'rahul@gmail.com', 'Hyderabad'),
(2, 'Priya Sharma', '9876543211', 'priya@gmail.com', 'Bangalore'),
(3, 'Arun Reddy', '9876543212', 'arun@gmail.com', 'Chennai');
INSERT INTO Accounts
(account_id, customer_id, account_type, balance)
VALUES
(101, 1, 'Savings', 25000.00),
(102, 2, 'Savings', 40000.00),
(103, 3, 'Current', 75000.00);
INSERT INTO Transactions
(transaction_id, account_id, transaction_type, amount, transaction_date)
VALUES
(1001, 101, 'Deposit', 5000.00, '2026-08-01'),
(1002, 101, 'Withdraw', 2000.00, '2026-08-05'),
(1003, 102, 'Deposit', 10000.00, '2026-08-07'),
(1004, 103, 'Withdraw', 5000.00, '2026-08-10');
SELECT * FROM Customers;
SELECT
    c.name,
    c.phone,
    a.account_id,
    a.account_type,
    a.balance
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id;
SELECT *
FROM Accounts
WHERE balance > 30000;
SELECT SUM(balance) AS Total_Bank_Balance
FROM Accounts;
SELECT MAX(balance) AS Highest_Balance
FROM Accounts;
