-- הכנסת נתונים לטבלת Dish
INSERT INTO Dish (Category, Price, Dish_ID, Dish_Name, Description, time_to_make)
VALUES
('Main Course', 49.99, 1, 'Steak', 'Grilled steak with sauce', '25 min'),
('Dessert', 19.99, 2, 'Chocolate Cake', 'Rich chocolate cake', '15 min'),
('Appetizer', 29.99, 3, 'Bruschetta', 'Tomato and basil on toast', '10 min');

-- הכנסת נתונים לטבלת Payment
INSERT INTO Payment (Payment_ID, Payment_Status, Payment_Method, Payment_Date)
VALUES
(1, 'Completed', 'CreditCard', '2024-04-01'),
(2, 'Pending', 'PayPal', '2024-04-02'),
(3, 'Failed', 'Cash', '2024-04-03');

-- הכנסת נתונים לטבלת Waiter
INSERT INTO Waiter (Waiter_ID, Full_Name, Work_Experience)
VALUES
(1, 'John Doe', 5),
(2, 'Alice Smith', 3),
(3, 'Bob Johnson', 7);

-- הכנסת נתונים לטבלת Customer
INSERT INTO Customer (sms_status_order, Customer_ID, Full_Name)
VALUES
('Order Confirmed', 1, 'Michael Brown'),
('Order Pending', 2, 'Sarah White'),
('Order Delivered', 3, 'David Green');

-- הכנסת נתונים לטבלת RestTable
INSERT INTO RestTable (Seats, Table_ID, Status0)
VALUES
(4, 1, 'Available'),
(2, 2, 'Occupied'),
(6, 3, 'Reserved');

-- הכנסת נתונים לטבלת RestOrder
INSERT INTO RestOrder (Status0, Total_price, Order_ID, Order_DateTime, Customer_ID, Waiter_ID, Table_ID, Payment_ID)
VALUES
('Completed', 79.98, 1, '2024-04-01', 1, 1, 1, 1),
('Pending', 49.99, 2, '2024-04-02', 2, 2, 2, 2),
('Cancelled', 19.99, 3, '2024-04-03', 3, NULL, 3, 3);

-- הכנסת נתונים לטבלת part_of_order
INSERT INTO part_of_order (Order_ID, Dish_ID)
VALUES
(1, 1),
(1, 2),
(2, 3);

