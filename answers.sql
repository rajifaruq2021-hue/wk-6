-- PLP Database Design & Programming with SQL
-- Assignment: Week 6
-- Name: RAJI FARUQ ISHOLA

-- Select the correct database to work with.
USE salesDB;

-- =============================================================================
-- Question 1: Get employee details with their office code using an INNER JOIN.
-- =============================================================================

-- Joining employees and offices to get details for everyone.
-- INNER JOIN makes sure only employees with a valid office are shown.
SELECT
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o ON e.officeCode = o.officeCode;

-- =============================================================================
-- Question 2: Get product details with their product line using a LEFT JOIN.
-- =============================================================================

-- Listing all products and adding their product line description.
-- LEFT JOIN ensures all products appear, even if a description is missing.
SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl ON p.productLine = pl.productLine;

-- =============================================================================
-- Question 3: Get the first 10 orders with customer info using a RIGHT JOIN.
-- =============================================================================

-- Combining customer and order info.
-- RIGHT JOIN starts with all orders and adds customer data if it matches.
-- Limiting to 10 as requested.
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    c.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;

