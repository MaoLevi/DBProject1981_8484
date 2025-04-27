# 🌟 **DBProject_1981_8484 - מערכת לניהול מסד נתונים** 🌟

## מגישים:
👨‍💻 **מאור לוי** (ת.ז: 328301981)  
👨‍💻 **ארי עוז** (ת.ז: 321918484)

### 🚀 **הקדמה**
הפרויקט עוסק בהקמת מערכת לניהול מסד נתונים עבור מסעדה 🍽️. המערכת כוללת מודולים לניהול הזמנות 🛍️, תשלומים 💳, עובדים 👨‍🍳, ולקוחות 🧑‍🤝‍🧑. המערכת מתמודדת עם שלב הגיבוי והשחזור של הנתונים 📦, ועושה שימוש בטכנולוגיות **SQL** לניהול הנתונים 🗄️, וב-Git לניהול גרסאות הקוד 🧑‍💻.

---

### 📑 **תוכן עניינים**
1. [הקדמה](#הקדמה)
2. [התרשימים](#התרשימים)
3. [צילומי מסך](#צילומי-מסך)
4. [הפקודות SQL](#הפקודות-sql)
5. [הגיבוי והשחזור](#הגיבוי-והשחזור)
6. [סיכום](#סיכום)

---

## 🗂️ **התרשימים**

במערכת זו השתמשנו בכמה תרשימים חשובים:

### 🖼️ **תרשימי ERD ו-DSD**
- **ERD** (Entity Relationship Diagram): תרשים המתאר את הקשרים בין ישויות שונות במערכת.
- **DSD** (Data Structure Diagram): תרשים המתאר את מבנה הנתונים הפיזי של המערכת.

#### ERD
![ERD](DBProject/328301981_321918484/שלב%20א/ERD.png)

#### DSD
![DSD](DBProject/328301981_321918484/שלב%20א/DSD.png)

---

## 📸 **צילומי מסך**

להלן צילומי מסך שמדגימים את תהליך הגיבוי והשחזור של המערכת:


### 1. **צילומי מסך של הגיבוי:**
- **OPEN BACKUP:** פותחים את קובץ הגיבוי.
   ![OPEN BACKUP](DBProject/328301981_321918484/שלב%20א/OPENBACKUP.png)
  - **CHOOSENAME:** בוחרים את קובץ הגיבוי.
   ![CHOOSENAME](DBProject/328301981_321918484/שלב%20א/CHOOSENAME.png)
- **BACKUP:** כאן ניתן לראות את תהליך הגיבוי.
   ![BACKUP](DBProject/328301981_321918484/שלב%20א/BACKUP.png)
- **SUCCESSFUL BACKUP:** לאחר ביצוע הגיבוי, המסך מראה שהגיבוי הצליח.
   ![BACKUP SUCCESS](DBProject/328301981_321918484/שלב%20א/BACKUPSECCESS.png)

### 2. **צילומי מסך של שחזור הנתונים:**

- **RESTORE:** תהליך שחזור הנתונים.
   ![RESTORE](DBProject/328301981_321918484/שלב%20א/RESTORE.png)
- **SUCCESSFUL RESTORE:** השחזור הושלם בהצלחה.
   ![RESTORE SUCCESS](DBProject/328301981_321918484/שלב%20א/RESTORESUCSSES.png)

---

## 🛠️ **הפקודות SQL**

במסגרת הפרויקט, יצרנו את הפקודות הבסיסיות לניהול הנתונים במסד הנתונים:

### 1. **`createTables.sql`** – יצירת הטבלאות במסד הנתונים
הפקודה הזו יוצרת את כל הטבלאות הדרושות למערכת:


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


### 2. **`dropTables.sql`** – מחיקת הטבלאות
הפקודה הזו תמחק את כל הטבלאות שנוצרו:

DROP TABLE part_of_order;
DROP TABLE RestOrder;
DROP TABLE Payment;
DROP TABLE Customer;
DROP TABLE Waiter;
DROP TABLE RestTable;
DROP TABLE Dish;

---

### 3. **`insertTables.sql`** – הכנסת נתונים לטבלאות

הפקודה הזו מכניסה נתונים לדוגמה לכל אחת מהטבלאות שנוצרו

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


### 4. **`selectAll.sql`** – שליפת כל הנתונים

הפקודה `selectAll.sql` מיועדת לשלוף את כל הנתונים מכל הטבלאות במסד הנתונים, והיא מספקת תמונה מלאה של כל המידע שנשמר במערכת. להלן כל פקודות ה-`SELECT` שנמצאות בקובץ זה:

-- הצגת כל הנתונים בטבלת Dish
SELECT * FROM Dish;

-- הצגת כל הנתונים בטבלת Payment
SELECT * FROM Payment;

-- הצגת כל הנתונים בטבלת Waiter
SELECT * FROM Waiter;

-- הצגת כל הנתונים בטבלת Customer
SELECT * FROM Customer;

-- הצגת כל הנתונים בטבלת RestTable
SELECT * FROM RestTable;

-- הצגת כל הנתונים בטבלת RestOrder
SELECT * FROM RestOrder;

-- הצגת כל הנתונים בטבלת part_of_order
SELECT * FROM part_of_order;
