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
2. 🟦 שלב א' – בניית בסיס הנתונים והגדרת ישויות
    1. [פירוט הישויות](#פירוט-הישויות)
    2. [קשרים בין הישויות](#קשרים-בין-הישויות)
    3. [ניתוח נירמול – Third Normal Form (3NF)](#ניתוח-נירמול--third-normal-form-3nf)
    4. [התרשימים](#התרשימים)
    5. [הצגת שיטות הכנסת נתונים](#הצגת-שיטות-הכנסת-נתונים)
    6. [צילומי מסך](#צילומי-מסך)
    7. [הפקודות SQL](#הפקודות-sql)
    8. [הגיבוי והשחזור](#הגיבוי-והשחזור)
    9. [סיכום שלב א'](#סיכום-שלב-א)
3. 🚀 שלב ב' – שאילתות מתקדמות, מגבלות, ועדכונים
    1. [קבצי שלב ב'](#קבצי-שלב-ב)
    2. [דוגמאות למגבלות (Constraints)](#דוגמאות-למגבלות-constraints)
    3. [דוגמאות לשאילתות SELECT מתקדמות](#דוגמאות-לשאילתות-select-מתקדמות)
    4. [דוגמאות לעדכון (UPDATE) ומחיקה (DELETE)](#דוגמאות-לעדכון-update-ומחיקה-delete)
    5. [ניהול טרנזקציות – Commit & Rollback](#ניהול-טרנזקציות--commit--rollback)
    6. [סיכום שלב ב'](#סיכום-שלב-ב)
4. 🚦 שלב ג' – אינטגרציה ומבטים (Views)
    1. [תרשימי DSD ו-ERD](#תרשימי-dsd-ו-erd)
    2. [החלטות אינטגרציה](#החלטות-אינטגרציה)
    3. [הסבר מילולי של תהליך האינטגרציה והפקודות](#הסבר-מילולי-של-תהליך-האטגרציה-והפקודות)
    4. [מבטים (Views) – תיאור, קוד, דוגמת SELECT ופלט](#מבטים-views--תיאור-קוד-דוגמת-select-ופלט)

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

---

בשלב ב' של הפרויקט העמקנו את העבודה עם מסד הנתונים, הוספנו מגבלות (Constraints), ביצענו שאילתות מורכבות, עדכונים, מחיקות, ולמדנו על ניהול טרנזקציות (Commit/Rollback). להלן פירוט מלא:

## 📂 קבצי שלב ב'

- **Constraints.sql** – קובץ זה מרכז את כל האילוצים שהוספנו לטבלאות במסד הנתונים, כולל בדיקות ערכים, ייחודיות, ערכי ברירת מחדל ועוד. כל אילוץ נועד להבטיח את תקינות הנתונים ולמנוע טעויות לוגיות.
- **SelectQueries.sql** – קובץ זה כולל שאילתות מורכבות לשליפת מידע, חישובים, הצגות נתונים משולבים, ומאפשר ניתוחים מתקדמים על בסיס הנתונים.
- **UpdateQueries.sql** – כאן מרוכזות פקודות לעדכון נתונים חכם לפי תנאים, דינמיקה של סטטוסים, עדכון אוטומטיבי של שדות ועוד.
- **DeleteQueries.sql** – קובץ זה כולל מחיקות מותנות, ניקוי נתונים לא רלוונטיים, ושמירה על שלמות הנתונים.
- **RollbackCommit/** – תיקייה זו מתעדת תהליכי Commit ו-Rollback עם צילומי מסך, המדגימים את ניהול הטרנזקציות במסד הנתונים.

---

## 🛡️ דוגמאות למגבלות (Constraints) והסבר

בשלב ב' הוספנו מגבלות (Constraints) לטבלאות במסד הנתונים כדי להבטיח תקינות לוגית של המידע. כל אילוץ נבחר בקפידה כדי למנוע טעויות נפוצות:

- **הגבלת זמן הכנה של מנה לשעה מקסימום:**
  - מונע הכנסת ערכים לא הגיוניים לשדה זמן הכנה.
  - דוגמה: ניסיון להכניס מנה עם זמן הכנה של שעתיים יגרום לשגיאה.
- **הגבלת אורך שם מנה ל-15 תווים:**
  - מבטיח שמות קצרים וקריאים בתפריט.
- **הגבלת תיאור מנה ל-250 תווים:**
  - מונע תיאורים ארוכים מדי.
- **ערך ברירת מחדל לאמצעי תשלום (Cash):**
  - אם לא הוזן אמצעי תשלום, ייקבע אוטומטית 'Cash'.
- **תאריך תשלום לא עתידי:**
  - מונע טעויות של תאריכים שגויים.
- **ניסיון עבודה של מלצר לא שלילי:**
  - מונע הכנסת ערכים שליליים לשנות ניסיון.
- **שם מלצר ייחודי:**
  - מונע כפילויות של שמות עובדים.

**המחשה:**
```sql
ALTER TABLE Dish ADD CONSTRAINT check_time_to_make CHECK (time_to_make <= TIME '01:00:00');
-- ניסיון להכניס מנה עם זמן הכנה 02:00:00 יגרום לשגיאה
```

---

## 🔍 דוגמאות לשאילתות SELECT מתקדמות והסבר

בשלב ב' נכתבו שאילתות מתקדמות שמאפשרות ניתוחים חכמים על בסיס הנתונים:

- **שליפת מנות שלוקח להן מעל 20 דקות להכין, כולל שם הלקוח והמלצר:**
  - מאפשרת למנהל לזהות מנות איטיות ולשפר תהליכים.
```sql
SELECT Dish.Dish_Name, Dish.time_to_make, Customer.Full_Name AS Customer, Waiter.Full_Name AS Waiter
FROM RestOrder
JOIN part_of_order ON RestOrder.RestOrder_ID = part_of_order.RestOrder_ID
JOIN Dish ON Dish.Dish_ID = part_of_order.Dish_ID
JOIN Customer ON Customer.Customer_ID = RestOrder.Customer_ID
LEFT JOIN Waiter ON Waiter.Waiter_ID = RestOrder.Waiter_ID
WHERE Dish.time_to_make > '00:20:00';
```
- **חישוב הכנסה יומית:**
  - מאפשר ניתוח רווחיות לפי ימים.
```sql
SELECT TO_CHAR(RestOrder.RestOrder_DateTime,'FMDay') AS Day, SUM(RestOrder.Total_price) AS DailyRevenue
FROM RestOrder
GROUP BY Day
ORDER BY DailyRevenue DESC;
```
- **לקוחות שהזמינו יותר ממנה אחת:**
  - מסייע בזיהוי לקוחות קבועים/גדולים.
```sql
SELECT Customer.Full_Name, COUNT(part_of_order.Dish_ID) AS DishesOrdered
FROM Customer
JOIN RestOrder ON Customer.Customer_ID = RestOrder.Customer_ID
JOIN part_of_order ON RestOrder.RestOrder_ID = part_of_order.RestOrder_ID
GROUP BY Customer.Full_Name
HAVING COUNT(part_of_order.Dish_ID) > 1;
```

---

## ✏️ דוגמאות לעדכון (UPDATE) ומחיקה (DELETE) והסבר

- **עדכון סטטוס שולחן לפנוי כאשר התשלום הושלם:**
  - מבטיח ששולחנות יתפנו אוטומטית לאחר תשלום.
```sql
UPDATE RestTable
SET Status = 'Available'
WHERE RestTable_ID IN (
  SELECT RestOrder.RestTable_ID
  FROM RestOrder
  JOIN Payment ON RestOrder.Payment_ID = Payment.Payment_ID
  WHERE Payment.Payment_Status = 'Completed'
);
```
- **עדכון זמן הכנה רנדומלי לכל מנה:**
  - מאפשר בדיקות עומס וסטטיסטיקות שונות.
```sql
UPDATE Dish
SET time_to_make = DATE_TRUNC('minute', '00:00'::time + (RANDOM() * INTERVAL '60 minutes'))::time;
```
- **מחיקת מנות שלא הוזמנו מעולם:**
  - מנקה נתונים לא רלוונטיים.
```sql
DELETE FROM Dish
WHERE Dish_ID NOT IN (
  SELECT DISTINCT Dish_ID FROM part_of_order
);
```
- **מחיקת לקוחות שלא ביצעו הזמנה:**
  - שומר על מסד נתונים נקי.
```sql
DELETE FROM Customer
WHERE Customer_ID NOT IN (
  SELECT Customer_ID FROM RestOrder
);
```

---

## 🔄 ניהול טרנזקציות – Commit & Rollback והסבר

בשלב ב' תרגלנו שמירה (Commit) וביטול (Rollback) של שינויים במסד הנתונים. כך ניתן להבטיח שכל שינוי קריטי יתבצע בשלמותו או יתבטל לחלוטין במקרה של תקלה.

- **Commit:** שומר את כל השינויים שבוצעו בטרנזקציה.
- **Rollback:** מבטל את כל השינויים שבוצעו מאז ה-Commit האחרון.

להלן המחשה של תהליך הטרנזקציה באמצעות צילומי מסך:

<table>
  <tr>
    <td align="center"><b>1. מצב התחלתי – לפני ביצוע שינוי</b><br>
    <span style="font-size:90%">כך נראים הנתונים לפני ביצוע פעולה כלשהי:</span><br>
    <img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע לפני ROLLBACK.png" width="400"/></td>
    <td align="center"><b>2. ביצוע שינוי ושמירה (Commit)</b><br>
    <span style="font-size:90%">לאחר ביצוע שינוי בנתונים, מבצעים Commit כדי לשמור את השינויים במסד הנתונים:</span><br>
    <img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע COMMIT.png" width="400"/></td>
  </tr>
  <tr>
    <td align="center"><b>3. ביצוע שינוי נוסף וביטול (Rollback)</b><br>
    <span style="font-size:90%">כעת מבוצע שינוי נוסף, אך הפעם נבחר לבצע Rollback – כלומר, לבטל את כל השינויים שבוצעו מאז ה-Commit האחרון:</span><br>
    <img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/ביצוע ROLLBACK.png" width="400"/></td>
    <td align="center"><b>4. מצב סופי – אחרי Rollback</b><br>
    <span style="font-size:90%">לאחר ביצוע Rollback, הנתונים חוזרים למצבם כפי שהיו לאחר ה-Commit האחרון. כך ניתן לראות שהשינוי האחרון בוטל:</span><br>
    <img src="DBProject/328301981_321918484/שלב ב/RollbackCommit/צילום אחרי ROLLBACK.png" width="400"/></td>
  </tr>
</table>

> **סיכום:** ניהול טרנזקציות מאפשר שליטה מלאה על שמירת שינויים או ביטולם, ומבטיח שמירה על תקינות הנתונים גם במקרי תקלה או טעות אנוש.

---

## 📝 סיכום שלב ב'

בשלב ב' חיזקנו את אמינות המערכת, הוספנו מגבלות לוגיות, ביצענו שאילתות מתקדמות, עדכונים ומחיקות חכמות, ולמדנו לנהל טרנזקציות בצורה מקצועית. כל אלו מבטיחים מסד נתונים איכותי, אמין, וקל לתחזוקה.

---

# 🚦 שלב ג' – אינטגרציה ומבטים (Views)

## תרשימי DSD

**DSD שלי:**
![DSD שלי](DBProject/328301981_321918484/שלב%20א/DSD.png)

**DSD של השותפים:**
![DSD של השותפים](DBProject/328301981_321918484/שלב%20ג/DSD%20של%20השותפים.jpg)

**DSD משותף (אינטגרציה):**
![DSD משותף](DBProject/328301981_321918484/שלב%20ג/DSD%20משותף.jpg)

**הסבר על דיאגרמת DSD המשותפת:**
בשלב האינטגרציה בוצע מיזוג בין מבני הנתונים של שני השותפים. נבחנו כל הישויות, שדות ומפתחות, בוצע איחוד טבלאות דומות, הוסרו כפילויות, והוגדרו אילוצים אחידים. התוצאה היא דיאגרמת DSD אחת שמייצגת את כל מבנה הנתונים של המסעדה, עם קשרים עקביים בין כל הישויות, תוך שמירה על שלמות ואחידות הנתונים.

---

## תרשימי ERD

**ERD שלי:**
![ERD שלי](DBProject/328301981_321918484/שלב%20א/ERD.png)

**ERD של השותפים:**
![ERD של השותפים](DBProject/328301981_321918484/שלב%20ג/ERD%20של%20השותפים.jpg)

**ERD משותף (אינטגרציה):**
![ERD משותף](DBProject/328301981_321918484/שלב%20ג/ERD%20משותף.jpg)

**הסבר על דיאגרמת ERD המשותפת:**
בשלב האינטגרציה בוצע חיבור בין כל הישויות והקשרים של שני הצדדים, תוך שמירה על כל המידע והקשרים ההכרחיים. כל ישות מופיעה פעם אחת בלבד, כל קשרי ה-1:N וה-N:M הותאמו למבנה המאוחד, והתווספו מפתחות זרים רלוונטיים. כך מתקבל ERD שלם, ברור, ומייצג את כל תהליכי המסעדה בצורה אינטגרטיבית.

---

## החלטות אינטגרציה

בשלב האינטגרציה בוצעו ההחלטות הבאות:
- בוצע איחוד בין טבלאות/ישויות דומות של שני השותפים, תוך שמירה על שלמות הנתונים.
- הוספת אילוצים חדשים (Constraints) לשמירה על עקביות בין טבלאות.
- עדכון מפתחות זרים (Foreign Keys) כך שיתמכו במבנה המאוחד.
- יצירת מבטים (Views) מרכזיים לניתוח נתונים רוחבי.
- הסרת כפילויות ושדות מיותרים.

---

## הסבר מילולי של תהליך האינטגרציה והפקודות

תהליך האינטגרציה כלל:
1. השוואת מבני הטבלאות בין שני הפרויקטים.
2. מיזוג טבלאות דומות, תוך שמירה על כל המידע.
3. עדכון סכמות, הוספת אילוצים, ומפתחות זרים.
4. יצירת Views מרכזיים (ראו קובץ: `views.sql`).
5. בדיקות שלמות נתונים והרצת שאילתות בדיקה.

---

## המשמעות של המערכת המשולבת וטבלת People

בשלב ג' נוצרה מערכת משולבת שמאגדת את מערכת ניהול המסעדה עם מערכת מחקרית של צוות נוסף. האינטגרציה לא מסתכמת רק במיזוג טבלאות – היא יוצרת ארגון חדש שבו אדם יכול להיות גם חוקר וגם מלצר, או למלא תפקיד אחד בלבד, והכל מנוהל תחת ישות מרכזית אחת.

### מהות המערכת החדשה
המערכת המשולבת מאפשרת לנהל תהליכים חוצי-ארגון: ניתן לעקוב אחרי עובדים שהם גם חוקרים, לבצע ניתוחים משותפים, ולבצע שאילתות שמחברות בין עולם המסעדה (הזמנות, תשלומים, שירות) לעולם המחקר (פרויקטים, ניסויים, צוותי מחקר).

### טבלת People – הגשר בין המערכות
הטבלה המרכזית שנוספה, `People`, מהווה גשר בין שתי המערכות:
- **researcher_id**: מזהה של חוקר (ממערכת המחקר).
- **waiter_id**: מזהה של מלצר (ממערכת המסעדה).

כך, כל שורה בטבלה מייצגת אדם שיכול להיות חוקר, מלצר, או שניהם. ניתן לקשר בין חוקרים למלצרים לפי מזהה משותף, ולבצע ניהול גמיש של תפקידים.

#### דוגמה לשימוש:
- אפשר לשלוף את כל האנשים שממלאים גם תפקיד של חוקר וגם של מלצר.
- אפשר לבצע ניתוחים חוצי-מערכות, למשל: אילו חוקרים עבדו גם כמלצרים במסעדה, או אילו מלצרים משתתפים בפרויקטים מחקריים.

### השתקפות ב-ERD/DSD
בתרשימי ה-ERD/DSD המשותפים ניתן לראות את טבלת People כישות מקשרת בין ישויות Waiter ו-Researcher. הדבר מדגיש את הגמישות והעוצמה של המערכת החדשה – לא מדובר רק באינטגרציה טכנית, אלא במערכת ארגונית אחת שמאפשרת ניהול כולל של משאבי אנוש, תהליכים, ונתונים משני עולמות.

> **לסיכום:** האינטגרציה בשלב ג' יצרה מערכת עשירה, גמישה ומודרנית, שמאפשרת לארגון לנהל תפקידים חופפים, לבצע ניתוחים מתקדמים, ולשלב בין עולמות שונים – הכל תחת מסד נתונים אחד, עם ממשק פשוט וברור.

---

## מבטים (Views) – תיאור, קוד, דוגמת SELECT ופלט

### 1. מבט: view_restaurant (סיכום תשלומים לפי אמצעי תשלום)
**תיאור:** מציג את סכום התשלומים הכולל לכל אמצעי תשלום במסעדה.

**קוד יצירת המבט:**
```sql
CREATE VIEW view_restaurant AS
SELECT Payment_Method, SUM(Total_price) AS Total_Price
FROM Payment
JOIN RestOrder ON Payment.Payment_ID = RestOrder.Payment_ID
GROUP BY Payment_Method;
```

**שליפת נתונים מהמבט:**
```sql
SELECT * FROM view_restaurant;
```

**פלט לדוגמה:**
<img src="DBProject/328301981_321918484/שלב%20ג/select%20from%20view_restaurant%20PAYMENT%20METHOD.png" alt="פלט SELECT * FROM view_restaurant" width="500"/>

---

### 2. מבט: view_restaurant (סיכום הכנסות לפי סכום)
**תיאור:** מציג את סכום ההכנסות הכולל לפי סכום ההזמנות.

**קוד יצירת המבט:**
```sql
CREATE VIEW view_restaurant AS
SELECT SUM(Total_price) AS Total_Price
FROM RestOrder;
```

**שליפת נתונים מהמבט:**
```sql
SELECT * FROM view_restaurant;
```

**פלט לדוגמה:**
<img src="DBProject/328301981_321918484/שלב%20ג/select%20from%20view_restaurant%20TOTAL%20PRICE.png" alt="פלט SELECT * FROM view_restaurant" width="500"/>

---

### 3. מבט: crew_name (רשימת צוות)
**תיאור:** מציג את שמות כל חברי הצוות במסעדה.

**קוד יצירת המבט:**
```sql
CREATE VIEW crew_name AS
SELECT Full_Name
FROM Waiter;
```

**שליפת נתונים מהמבט:**
```sql
SELECT * FROM crew_name;
```

**פלט לדוגמה:**
<img src="DBProject/328301981_321918484/שלב%20ג/SELECT%20crew_name%20.png" alt="פלט SELECT * FROM crew_name" width="500"/>

---

### 4. מבט: researcher_name (רשימת חוקרים/לקוחות)
**תיאור:** מציג את שמות כל החוקרים/הלקוחות במסעדה.

**קוד יצירת המבט:**
```sql
CREATE VIEW researcher_name AS
SELECT Full_Name
FROM Customer;
```

**שליפת נתונים מהמבט:**
```sql
SELECT * FROM researcher_name;
```

**פלט לדוגמה:**
<img src="DBProject/328301981_321918484/שלב%20ג/select%20researcher_name.png" alt="פלט SELECT * FROM researcher_name" width="500"/>

---

> לכל מבט מוצג תיאור, קוד יצירה, דוגמת SELECT, ופלט אמיתי מצילום מסך. ניתן להוסיף מבטים נוספים או להרחיב הסברים לפי הצורך.

---
