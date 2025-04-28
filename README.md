# 🌟 **DBProject_1981_8484 - מערכת לניהול מסד נתונים** 🌟

## מגישים:
👨‍💻 **מאור לוי** (ת.ז: 328301981)<a href="https://www.linkedin.com/in/maor-lev?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"><img src="DBProject/328301981_321918484/שלב%20א/לינדקאין.png" width="25" />
</a>

👨‍💻 **ארי עוז** (ת.ז: 321918484)<a href="http://www.linkedin.com/in/ari-oz-0a555b274"><img src="DBProject/328301981_321918484/שלב%20א/לינדקאין.png" width="25" />
</a>


# 📋 תיאור הארגון

המערכת מיועדת לניהול מסד נתונים עבור מסעדה. היא כוללת את כל המודולים הנדרשים כדי לנהל את הזמנות, תשלומים, עובדים ולקוחות בצורה אפקטיבית ומסודרת.

---
---

### 📑 **תוכן עניינים**
1. [ תיאור הארגון](#תיאור-הארגון)
2. [התרשימים](#התרשימים)
3. [צילומי מסך](#צילומי-מסך)
4. [הפקודות SQL](#הפקודות-sql)
5. [הגיבוי והשחזור](#הגיבוי-והשחזור)
6. [סיכום](#סיכום)

---

# 🧑‍💻 פירוט הישויות

### **Dish** - מנות המסעדה 🍝  
**תיאור**:  
טבלה זו שומרת את כל המנות המוצעות במסעדה, כולל שם המנה, קטגוריית המנה (למשל, פיצה, פסטה, קינוחים), מחיר, תיאור קצר של המנה וזמן ההכנה שלה.  
**תפקיד במערכת**:  
כל מנה מיוצגת כמשאב עצמאי עם מאפיינים משלה.  
המערכת מאפשרת למלצרים וללקוחות לדעת את המנות הזמינות ולשלוח הזמנות במהירות.

---

### **Payment** - תשלומים 💳  
**תיאור**:  
טבלה זו מכילה את כל פרטי התשלום עבור כל הזמנה שנעשית במסעדה. היא שומרת את סטטוס התשלום (למשל, אם התשלום בוצע או אם הוא תלוי), את אמצעי התשלום (כרטיס אשראי, מזומן וכו'), ואת תאריך התשלום.  
**תפקיד במערכת**:  
המערכת משתמשת בטבלה זו כדי לעקוב אחרי כל תשלום שנעשה במסעדה, ולהבטיח שכל הזמנה שולמה במלואה.

---

### **Waiter** - עובדים (מלצרים) 🍽️  
**תיאור**:  
טבלה זו שומרת את המידע על המלצרים (עובדי המסעדה). היא כוללת את מזהה המלצר, שם מלא, וכמות שנות הניסיון שלו.  
**תפקיד במערכת**:  
המערכת מאפשרת לזהות איזה מלצר טיפל בהזמנה מסוימת, מה שמסייע בניהול יעיל של השירות במסעדה.

---

### **Customer** - לקוחות 🧑‍🤝‍🧑  
**תיאור**:  
טבלה זו מכילה את פרטי הלקוחות של המסעדה, כולל מזהה הלקוח, שם מלא וסטטוס הזמנותיו (אם הזמין או לא, היסטוריית הזמנות, אם יש בעיות בתשלום וכו').  
**תפקיד במערכת**:  
המערכת שומרת את פרטי הלקוחות, ומאפשרת למלצרים לדעת את ההעדפות האישיות של הלקוח אם יש צורך. כמו כן, כל הזמנה מקושרת ללקוח כך שניתן לעקוב אחרי היסטוריית ההזמנות שלו.

---

### **RestTable** - שולחנות 🪑  
**תיאור**:  
טבלה זו מכילה את המידע על שולחנות המסעדה. כל שולחן מקבל מזהה ייחודי, מספר מקומות ישיבה וסטטוס (אם השולחן תפוס או פנוי).  
**תפקיד במערכת**:  
כל הזמנה מתבצעת על שולחן מסוים. אם שולחן פנוי, ניתן להושיב עליו לקוח חדש. טבלה זו מסייעת בניהול זמינות השולחנות במסעדה.

---

### **RestOrder** - הזמנות 🧑‍🍳  
**תיאור**:  
טבלה זו שומרת את כל ההזמנות שנעשו במסעדה. כל הזמנה שייכת ללקוח מסוים וכוללת את סטטוס ההזמנה (האם היא הושלמה או בתהליך), את המנות שהוזמנו, את סך העלות ואת מזהה המלצר שטיפל בהזמנה.  
**תפקיד במערכת**:  
המערכת עוקבת אחרי כל הזמנה שמבוצעת במסעדה, כולל הקשר שלה ללקוח, למלצר ולשולחן.

---

### **part_of_order** - חלקים מתוך ההזמנה 🍽️  
**תיאור**:  
טבלה זו מייצגת את הקשר בין המנות להזמנות. כל הזמנה יכולה לכלול מספר מנות, והטבלה שומרת את המידע על אילו מנות שייכות לאיזו הזמנה.  
**תפקיד במערכת**:  
המערכת מקשרת כל מנה להזמנה שלה כך שהיא יכולה לעקוב אחרי כל פרטי ההזמנה ולהוציא את המנות במדויק.

---

# 🔗 קשרים בין הישויות

הקשרים בין הישויות מאפשרים למערכת לנהל את כל תהליך ההזמנה, מעקב אחר תשלומים, חיבור בין לקוחות ומלצרים לשולחנות, וכל פרטי ההזמנות.

---

# 🔄 נרמול הסכימה

הסכימה מנורמלת על מנת למנוע שכפול נתונים ולשמור על שלמות הנתונים במסד.

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
## 📸 הצגת שיטות הכנסת נתונים 📸

במסגרת הפרויקט, נעשה שימוש בשלוש שיטות שונות להוספת נתונים לטבלאות במסד הנתונים:

1. **שימוש ב-Mockaroo** – ליצירת נתונים סינתטיים איכותיים בקובץ CSV 📄
2. **שימוש באתר GenerateData** – ליצירת טבלאות נתונים מותאמות אישית 🛠️
3. **סקריפט בפייתון** – להכנסה אוטומטית ודינמית של נתונים ישירות למסד הנתונים 🐍

להלן צילומי מסך הממחישים את העבודה עם כל שיטה:

### 🧩 Mockaroo
השתמשנו באתר Mockaroo ליצירת נתונים אקראיים באיכות גבוהה:

![Mockaroo Screenshot](DBProject/328301981_321918484/שלב%20א/MOCKAROO.png)

---

### 🛠️ GenerateData
באמצעות אתר GenerateData נוצרו טבלאות נתונים נוספות בהתאמה אישית:

![GenerateData Screenshot](DBProject/328301981_321918484/שלב%20א/GENERTDATA.png)

---

### 🐍 סקריפט פייתון
פיתחנו סקריפט בפייתון שמכניס נתונים ישירות למסד הנתונים:

<img src="DBProject/328301981_321918484/שלב%20א/PYCHARM.png" alt="צילום מסך PYCHARM" width="180"/>


---

> 🔥 השימוש בשיטות מגוונות אלו מאפשר יצירת בסיס נתונים עשיר, אמין ומדויק לצורך ניתוחים עתידיים ולבדיקות עומק.


## 📸 **צילומי מסך**

להלן צילומי מסך של תהליך הגיבוי והשחזור של המערכת:


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
```sql

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

---
```
### 2. **`dropTables.sql`** – מחיקת הטבלאות
הפקודה הזו תמחק את כל הטבלאות שנוצרו:
```sql
DROP TABLE part_of_order;
DROP TABLE RestOrder;
DROP TABLE Payment;
DROP TABLE Customer;
DROP TABLE Waiter;
DROP TABLE RestTable;
DROP TABLE Dish;
```
---

### 3. **`insertTables.sql`** – הכנסת נתונים לטבלאות

הפקודה הזו מכניסה נתונים לדוגמה לכל אחת מהטבלאות שנוצרו
```sql

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

```
---

### 4. **`selectAll.sql`** – שליפת כל הנתונים

הפקודה `selectAll.sql` מיועדת לשלוף את כל הנתונים מכל הטבלאות במסד הנתונים, והיא מספקת תמונה מלאה של כל המידע שנשמר במערכת. להלן כל פקודות ה-`SELECT` שנמצאות בקובץ זה:
```sql

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


```
---


### **📝 סיכום 📝**
המערכת לניהול המסעדה מציעה פתרון מקיף שמחבר בין כל האלמנטים השונים במסעדה – ממנות תפריט, דרך תשלומים ועד ניהול עובדים ולקוחות. כל ישות במערכת מקושרת באופן ברור ומאורגן, מה שמאפשר לכל פונקציה לעבוד בצורה חלקה ומסודרת.
