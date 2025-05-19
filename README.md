# 🌟 **DBProject_1981_8484 - מערכת לניהול מסד נתונים** 🌟

## מגישים:
👨‍💻 **מאור לוי** (ת.ז: 328301981)<a href="https://www.linkedin.com/in/maor-lev?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"><img src="DBProject/328301981_321918484/שלב%20א/לינדקאין.png" width="25" />
</a>

👨‍💻 **ארי עוז** (ת.ז: 321918484)<a href="http://www.linkedin.com/in/ari-oz-0a555b274"><img src="DBProject/328301981_321918484/שלב%20א/לינדקאין.png" width="25" />
</a>


# 📋 תיאור הארגון

המערכת מיועדת לניהול מסד נתונים עבור מסעדה. היא כוללת את כל המודולים הנדרשים כדי לנהל את הזמנות, תשלומים, עובדים ולקוחות בצורה אפקטיבית ומסודרת.

---

### 📑 תוכן עניינים
1. [תיאור הארגון](#תיאור-הארגון)
2. [פירוט הישויות](#פירוט-הישויות)
3. [קשרים בין הישויות](#קשרים-בין-הישויות)
4. [ניתוח נירמול – Third Normal Form (3NF)](#ניתוח-נירמול--third-normal-form-3nf)
5. [התרשימים](#התרשימים)
6. [הצגת שיטות הכנסת נתונים](#הצגת-שיטות-הכנסת-נתונים)
7. [צילומי מסך](#צילומי-מסך)
8. [הפקודות SQL](#הפקודות-sql)
9. [הגיבוי והשחזור](#הגיבוי-והשחזור)
10. [סיכום שלב א'](#סיכום-שלב-א)
11. [שלב ב' – שאילתות מתקדמות, מגבלות, ועדכונים](#שלב-ב-–-שאילתות-מתקדמות-מגבלות-ועדכונים)
    1. [קבצי שלב ב'](#קבצי-שלב-ב)
    2. [דוגמאות למגבלות (Constraints)](#דוגמאות-למגבלות-constraints)
    3. [דוגמאות לשאילתות SELECT מתקדמות](#דוגמאות-לשאילתות-select-מתקדמות)
    4. [דוגמאות לעדכון (UPDATE) ומחיקה (DELETE)](#דוגמאות-לעדכון-update-ומחיקה-delete)
    5. [ניהול טרנזקציות – Commit & Rollback](#ניהול-טרנזקציות--commit--rollback)
    6. [סיכום שלב ב'](#סיכום-שלב-ב)
12. [דרישות הדוח לשלב ב' – הצגה ויזואלית ודוגמאות](#דרישות-הדוח-לשלב-ב-–-הצגה-ויזואלית-ודוגמאות)

---

# 🟦 שלב א' – בניית בסיס הנתונים והגדרת ישויות

### 📑 תוכן עניינים של שלב א'
1. [פירוט הישויות](#פירוט-הישויות)
2. [קשרים בין הישויות](#קשרים-בין-הישויות)
3. [ניתוח נירמול – Third Normal Form (3NF)](#ניתוח-נירמול--third-normal-form-3nf)
4. [התרשימים](#התרשימים)
5. [הצגת שיטות הכנסת נתונים](#הצגת-שיטות-הכנסת-נתונים)
6. [צילומי מסך](#צילומי-מסך)
7. [הפקודות SQL](#הפקודות-sql)
8. [סיכום שלב א'](#סיכום-שלב-א)

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






## 📊 ניתוח נירמול – Third Normal Form (3NF)

במערכת לניהול מסעדה, כל ישות (טבלה) תוכננה בקפידה כך שתעמוד בכללי הנירמול, ובעיקר **הצורה השלישית (3NF)** —
כל שדה תלוי אך ורק במפתח הראשי של הטבלה, ואין תלות בין שדות שאינם מפתח.

---

### 📄 Customer

**🆔 מפתח ראשי:** `Customer_ID`

כל שדה תלוי אך ורק במזהה הלקוח.
אין תלות בין `Full_Name` לבין `sms_status_order`, ולכן הטבלה עומדת ב־3NF.

---

### 📄 Waiter

**🆔 מפתח ראשי:** `Waiter_ID`

שדות כמו `Full_Name` ו־`Work_Experience` תלויים ישירות רק במפתח.
אין ביניהם תלות פנימית — כל שדה מייצג תכונה נפרדת של המלצר.

---

### 📄 Dish

**🆔 מפתח ראשי:** `Dish_ID`

שדות כמו `Dish_Name`, `Price` ו־`time_to_make` תלויים רק במזהה המנה.
למשל: אין קשר ישיר בין המחיר לבין זמן ההכנה, ולכן אין תלות מעבר.

---

### 📄 RestTable

**🆔 מפתח ראשי:** `Table_ID`

שדות כמו `Seats` ו־`Status0` תלויים ישירות רק במזהה השולחן.
אין תלות ביניהם — מושבים וסטטוס הם תכונות עצמאיות.

---

### 📄 RestOrder

**🆔 מפתח ראשי:** `Order_ID`

כל שדה (כמו `Total_price`, `Customer_ID`, `Waiter_ID`, `Payment_ID`) תלוי רק במזהה ההזמנה.
לדוגמה: אין תלות בין מזהה הלקוח לבין מזהה התשלום — כל שדה נשען רק על ההזמנה.

---

### 📄 part\_of\_order

**🆔 מפתח מורכב:** `(Order_ID, Dish_ID)`

השדות תלויים אך ורק בצמד המפתחות — מזהים מנה בתוך הזמנה מסוימת.
אין תלות פנימית בין `Order_ID` ל־`Dish_ID`, אלא רק שילוב ביניהם מייחד את השורה.

---

### 📄 Payment

**🆔 מפתח ראשי:** `Payment_ID`

שדות כמו `Payment_Status`, `Payment_Method` ו־`Payment_Date` תלויים ישירות רק במזהה התשלום.
אין ביניהם תלות לוגית — כל שדה עצמאי ונוגע רק לתשלום הספציפי.

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
![Mockaroo Screenshot](DBProject/328301981_321918484/שלב%20א/הכנסת%20נתונים%20מוקקרו.png)

---


### 🛠️ GenerateData
באמצעות אתר GenerateData נוצרו טבלאות נתונים נוספות בהתאמה אישית:

![GenerateData Screenshot](DBProject/328301981_321918484/שלב%20א/GENERTDATA.png)

![GenerateData Screenshot](DBProject/328301981_321918484/שלב%20א/הכנסת%20נתונים%20GENERTDATA.png)


---


### 🐍 סקריפט פייתון
פיתחנו סקריפט בפייתון שמכניס נתונים ישירות למסד הנתונים:

<img src="DBProject/328301981_321918484/שלב%20א/PYCHARM.png" alt="צילום מסך PYCHARM" width="180"/>

```python
import csv
import os

csv_folder = "csv_files"
output_folder = "sql_output"
os.makedirs(output_folder, exist_ok=True)


tables = [
    "Dish",
    "Payment",
    "Waiter",
    "Customer",
    "RestTable",
    "RestOrder",
    "part_of_order"
]

#  פונקציה להמרת ערך לתוך SQL (מספרים, תאריכים, טקסט
def format_value(val):
    val = val.strip()
    if val == "NULL":
        return "NULL"
    try:
        float(val)  # לבדוק אם זה מספר
        return val
    except ValueError:
        if '-' in val and len(val.split('-')) == 3:  # תאריך (פורמט: YYYY-MM-DD)
            return f"'{val}'"
        safe_val = val.replace("'", "''")  # לברוח גרשיים
        return f"'{safe_val}'"

#  עיבוד כל קובץ
for table in tables:
    csv_path = os.path.join(csv_folder, f"{table}.csv")
    sql_path = os.path.join(output_folder, f"{table}.sql")

    with open(csv_path, mode='r', encoding='utf-8') as csv_file:
        reader = csv.reader(csv_file)
        headers = next(reader)  # שורת כותרת

        with open(sql_path, mode='w', encoding='utf-8') as sql_file:
            for row in reader:
                values = [format_value(v) for v in row]
                insert_stmt = f"INSERT INTO {table} ({', '.join(headers)}) VALUES ({', '.join(values)});"
                sql_file.write(insert_stmt + "\n")




---
```

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

---

# 🚀 שלב ב' – שאילתות מתקדמות, מגבלות, ועדכונים

### 📑 תוכן עניינים של שלב ב'
1. [קבצי שלב ב'](#קבצי-שלב-ב)
2. [דוגמאות למגבלות (Constraints)](#דוגמאות-למגבלות-constraints)
3. [דוגמאות לשאילתות SELECT מתקדמות](#דוגמאות-לשאילתות-select-מתקדמות)
4. [דוגמאות לעדכון (UPDATE) ומחיקה (DELETE)](#דוגמאות-לעדכון-update-ומחיקה-delete)
5. [ניהול טרנזקציות – Commit & Rollback](#ניהול-טרנזקציות--commit--rollback)
6. [סיכום שלב ב'](#סיכום-שלב-ב)
7. [דרישות הדוח לשלב ב' – הצגה ויזואלית ודוגמאות](#דרישות-הדוח-לשלב-ב--הצגה-ויזואלית-ודוגמאות)

---

בשלב ב' של הפרויקט העמקנו את העבודה עם מסד הנתונים, הוספנו מגבלות (Constraints), ביצענו שאילתות מורכבות, עדכונים, מחיקות, ולמדנו על ניהול טרנזקציות (Commit/Rollback). להלן פירוט מלא:

## 📂 קבצי שלב ב'

- **Constraints.sql** – הוספת מגבלות שלמות, בדיקות ערכים, ייחודיות, ערכי ברירת מחדל ועוד.
- **SelectQueries.sql** – שאילתות מורכבות לשליפות מידע, חישובים, הצגות נתונים משולבים.
- **UpdateQueries.sql** – עדכון נתונים חכם לפי תנאים, דינמיקה של סטטוסים, עדכון אוטומטי של שדות.
- **DeleteQueries.sql** – מחיקות מותנות, ניקוי נתונים לא רלוונטיים.
- **RollbackCommit/** – תיעוד תהליכי Commit ו-Rollback עם צילומי מסך.

---

## 🛡️ דוגמאות למגבלות (Constraints)

```sql
-- הגבלת זמן הכנה של מנה לשעה מקסימום
ALTER TABLE "Dish"
ADD CONSTRAINT check_time_to_make
CHECK ("time_to_make" <= TIME '01:00:00');

-- הגבלת אורך שם מנה ל-15 תווים
ALTER TABLE "Dish"
ADD CONSTRAINT check_dish_name_length
CHECK (char_length("Dish_Name") <= 15);

-- הגבלת תיאור מנה ל-250 תווים
ALTER TABLE "Dish"
ADD CONSTRAINT check_description_length
CHECK (char_length("Description") <= 250);

-- ערך ברירת מחדל לאמצעי תשלום: Cash
ALTER TABLE "Payment"
ALTER COLUMN "Payment_Method" SET DEFAULT 'Cash';

-- תאריך תשלום לא עתידי
ALTER TABLE "Payment"
ADD CONSTRAINT check_payment_date_not_future
CHECK ("Payment_Date" <= CURRENT_DATE);

-- ניסיון עבודה של מלצר לא שלילי
ALTER TABLE "Waiter"
ADD CONSTRAINT check_experience_positive
CHECK ("Work_Experience" >= 0);

-- שם מלצר ייחודי
ALTER TABLE "Waiter"
ADD CONSTRAINT unique_waiter_name
UNIQUE ("Full_Name");
```

---

## 🔍 דוגמאות לשאילתות SELECT מתקדמות

```sql
-- שליפת מנות שלוקח להן מעל 20 דקות להכין, כולל שם הלקוח והמלצר
SELECT 
  "Dish"."Dish_Name", 
  "Dish"."time_to_make", 
  "Customer"."Full_Name" AS Customer, 
  "Waiter"."Full_Name" AS Waiter
FROM "RestOrder"
JOIN "part_of_order" ON "RestOrder"."RestOrder_ID" = "part_of_order"."RestOrder_ID"
JOIN "Dish" ON "Dish"."Dish_ID" = "part_of_order"."Dish_ID"
JOIN "Customer" ON "Customer"."Customer_ID" = "RestOrder"."Customer_ID"
LEFT JOIN "Waiter" ON "Waiter"."Waiter_ID" = "RestOrder"."Waiter_ID"
WHERE "Dish"."time_to_make" > '00:20:00';

-- חישוב הכנסה יומית
SELECT 
  TO_CHAR("RestOrder"."RestOrder_DateTime",'FMDay') AS "Day", 
  SUM("RestOrder"."Total_price") AS "DailyRevenue"
FROM "RestOrder"
GROUP BY "Day"
ORDER BY "DailyRevenue" DESC;

-- לקוחות שהזמינו יותר ממנה אחת
SELECT 
  "Customer"."Full_Name", 
  COUNT("part_of_order"."Dish_ID") AS "DishesOrdered"
FROM "Customer"
JOIN "RestOrder" ON "Customer"."Customer_ID" = "RestOrder"."Customer_ID"
JOIN "part_of_order" ON "RestOrder"."RestOrder_ID" = "part_of_order"."RestOrder_ID"
GROUP BY "Customer"."Full_Name"
HAVING COUNT("part_of_order"."Dish_ID") > 1;
```

---

## ✏️ דוגמאות לעדכון (UPDATE) ומחיקה (DELETE)

```sql
-- עדכון סטטוס שולחן לפנוי כאשר התשלום הושלם
UPDATE "RestTable"
SET "Status" = 'Available'
WHERE "RestTable_ID" IN (
  SELECT "RestOrder"."RestTable_ID"
  FROM "RestOrder"
  JOIN "Payment" ON "RestOrder"."Payment_ID" = "Payment"."Payment_ID"
  WHERE "Payment"."Payment_Status" = 'Completed'
);

-- עדכון זמן הכנה רנדומלי לכל מנה
UPDATE "Dish"
SET time_to_make = DATE_TRUNC('minute', '00:00'::time + (RANDOM() * INTERVAL '60 minutes'))::time;

-- מחיקת מנות שלא הוזמנו מעולם
DELETE FROM "Dish"
WHERE "Dish_ID" NOT IN (
  SELECT DISTINCT "Dish_ID" FROM "part_of_order"
);

-- מחיקת לקוחות שלא ביצעו הזמנה
DELETE FROM "Customer"
WHERE "Customer_ID" NOT IN (
  SELECT "Customer_ID" FROM "RestOrder"
);
```

---

## 🔄 ניהול טרנזקציות – Commit & Rollback

בשלב ב' תרגלנו שמירה (Commit) וביטול (Rollback) של שינויים במסד הנתונים. להלן צילומי מסך מתהליך העבודה:

<table><tr>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20COMMIT.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20לפני%20ROLLBACK.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20ROLLBACK.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/צילום%20אחרי%20ROLLBACK.png" width="200"/></td>
</tr>
<tr>
<td align="center">ביצוע Commit</td>
<td align="center">לפני Rollback</td>
<td align="center">ביצוע Rollback</td>
<td align="center">לאחר Rollback</td>
</tr></table>

---

## 📝 סיכום שלב ב'

בשלב ב' חיזקנו את אמינות המערכת, הוספנו מגבלות לוגיות, ביצענו שאילתות מתקדמות, עדכונים ומחיקות חכמות, ולמדנו לנהל טרנזקציות בצורה מקצועית. כל אלו מבטיחים מסד נתונים איכותי, אמין, וקל לתחזוקה.

---

# 📑 דרישות הדוח לשלב ב' – הצגה ויזואלית ודוגמאות

להלן פירוט הדרישות והמבנה המומלץ להצגת שלב ב' בדוח:

## 🔎 שאילתות SELECT – דוגמאות, הסבר וצילומי מסך

עבור כל אחת מ-8 השאילתות שבקובץ SelectQueries.sql:
- **הסבר בעברית**: מה השאילתה עושה, מה המטרה שלה.
- **צילום מסך של הרצת השאילתה** (לדוג' מתוך כלי SQL).
- **צילום מסך של תוצאת השאילתה** (עד 5 שורות).

> **דוגמה**  
> **שאילתה:** שליפת כל המנות שלוקח להן מעל 20 דקות להכין, כולל שם הלקוח והמלצר.  
> **צילום הרצה:**  
> <img src="DBProject/328301981_321918484/שלב ב/SelectScreenshots/select1_run.png" width="400"/>  
> **צילום תוצאה:**  
> <img src="DBProject/328301981_321918484/שלב ב/SelectScreenshots/select1_result.png" width="400"/>

(יש להוסיף כך עבור כל 8 השאילתות, עם הסבר, צילום הרצה וצילום תוצאה.)

---

## 🗑️ שאילתות DELETE ו-UPDATE – הסבר, צילום הרצה, צילום לפני/אחרי

עבור כל אחת משאילתות ה-DELETE וה-UPDATE:
- **הסבר בעברית**: מה השאילתה עושה.
- **צילום מסך של הרצת השאילתה**.
- **צילום מסך של בסיס הנתונים לפני העדכון**.
- **צילום מסך של בסיס הנתונים אחרי העדכון**.

> **דוגמה**  
> **שאילתה:** מחיקת מנות שלא הוזמנו מעולם.  
> **צילום הרצה:**  
> <img src="DBProject/328301981_321918484/שלב ב/UpdateDeleteScreenshots/delete1_run.png" width="400"/>  
> **לפני:**  
> <img src="DBProject/328301981_321918484/שלב ב/UpdateDeleteScreenshots/delete1_before.png" width="400"/>  
> **אחרי:**  
> <img src="DBProject/328301981_321918484/שלב ב/UpdateDeleteScreenshots/delete1_after.png" width="400"/>

---

## 🛡️ אילוצים (Constraints) – תיאור, ניסיון הכנסת נתון שגוי, צילום שגיאה

עבור כל אילוץ (Constraint) שהוגדר:
- **תיאור השינוי**: מה האילוץ, למה הוא חשוב.
- **צילום מסך של פקודת ALTER TABLE**.
- **ניסיון להכניס נתון שסותר את האילוץ** (INSERT/UPDATE).
- **צילום מסך של שגיאת ההרצה**.

> **דוגמה**  
> **אילוץ:** הגבלת זמן הכנה של מנה לשעה מקסימום.  
> **צילום פקודה:**  
> <img src="DBProject/328301981_321918484/שלב ב/ConstraintsScreenshots/constraint1_alter.png" width="400"/>  
> **ניסיון הכנסת נתון שגוי:**  
> <img src="DBProject/328301981_321918484/שלב ב/ConstraintsScreenshots/constraint1_insert_fail.png" width="400"/>  
> **צילום שגיאה:**  
> <img src="DBProject/328301981_321918484/שלב ב/ConstraintsScreenshots/constraint1_error.png" width="400"/>

---

## 🔄 דוגמאות Rollback ו-Commit – תיעוד מצב הבסיס בכל שלב

- **הסבר קצר**: מה בוצע בכל שלב (לפני, אחרי Commit, אחרי Rollback).
- **צילומי מסך**: מצב בסיס הנתונים בכל שלב.

> **דוגמה**  
> <table><tr>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20COMMIT.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20לפני%20ROLLBACK.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע%20ROLLBACK.png" width="200"/></td>
<td><img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/צילום%20אחרי%20ROLLBACK.png" width="200"/></td>
</tr>
<tr>
<td align="center">ביצוע Commit</td>
<td align="center">לפני Rollback</td>
<td align="center">ביצוע Rollback</td>
<td align="center">לאחר Rollback</td>
</tr></table>

---

**הערה:**  
יש להקפיד על שילוב הסברים בעברית, דוגמאות קוד, וצילומי מסך מקוריים מהפרויקט, לפי כל סעיף.

---
