CREATE TABLE Dish
(
  Category VARCHAR(15) NOT NULL,
  Price FLOAT NOT NULL,
  Dish_ID INT NOT NULL,
  Dish_Name VARCHAR(15) NOT NULL,
  Description VARCHAR(50) NOT NULL,
  time_to_make VARCHAR(15) NOT NULL,
  PRIMARY KEY (Dish_ID)
);

CREATE TABLE Payment
(
  Payment_ID INT NOT NULL,
  Payment_Status VARCHAR(10) NOT NULL,
  Payment_Method VARCHAR(10) NOT NULL,
  Payment_Date DATE NOT NULL,
  PRIMARY KEY (Payment_ID)
);

CREATE TABLE Waiter
(
  Waiter_ID INT NOT NULL,
  Full_Name VARCHAR(50) NOT NULL,
  Work_Experience INT NOT NULL,
  PRIMARY KEY (Waiter_ID)
);

CREATE TABLE Customer
(
  sms_status_order VARCHAR(50) NOT NULL,
  Customer_ID INT NOT NULL,
  Full_Name VARCHAR(50) NOT NULL,
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE RestTable
(
  Seats INT NOT NULL,
  Table_ID INT NOT NULL,
  Status0 VARCHAR(10) NOT NULL,
  PRIMARY KEY (Table_ID)
);

CREATE TABLE RestOrder
(
  Status0 VARCHAR(10) NOT NULL,
  Total_price FLOAT NOT NULL,
  Order_ID INT NOT NULL,
  Order_DateTime DATE NOT NULL,
  Customer_ID INT NOT NULL,
  Waiter_ID INT,
  Table_ID INT NOT NULL,
  Payment_ID INT NOT NULL,
  PRIMARY KEY (Order_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Waiter_ID) REFERENCES Waiter(Waiter_ID),
  FOREIGN KEY (Table_ID) REFERENCES RestTable(Table_ID),
  FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID)
);

CREATE TABLE part_of_order
(
  Order_ID INT NOT NULL,
  Dish_ID INT NOT NULL,
  PRIMARY KEY (Order_ID, Dish_ID),
  FOREIGN KEY (Order_ID) REFERENCES RestOrder(Order_ID),
  FOREIGN KEY (Dish_ID) REFERENCES Dish(Dish_ID)
);