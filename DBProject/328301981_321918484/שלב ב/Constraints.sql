-- ============ טבלה: Dish ============

SELECT * FROM "Dish"
WHERE "time_to_make" > TIME '00:30:00';

ALTER TABLE "Dish"
ADD CONSTRAINT check_time_to_make
CHECK ("time_to_make" <= TIME '01:00:00');

-- שם מנה לפחות 1 תווים
ALTER TABLE "Dish"
ADD CONSTRAINT check_dish_name_length
CHECK (char_length("Dish_Name") <= 15);


-- תיאור עד 250 תווים (לא חובה, כי כבר מוגבל ב-VARCHAR, אבל טוב להראות את השימוש)
ALTER TABLE "Dish"
ADD CONSTRAINT check_description_length
CHECK (char_length("Description") <= 250);



-- ============ טבלה: Payment ============

-- ברירת מחדל לשיטת תשלום: Cash
ALTER TABLE "Payment"
ALTER COLUMN "Payment_Method" SET DEFAULT 'Cash';

-- סטטוס תשלום לא יכול להיות NULL (למרות שהוא כבר מוגדר NOT NULL ב-CREATE TABLE)
ALTER TABLE "Payment"
ALTER COLUMN "Payment_Status" SET NOT NULL;

-- תאריך תשלום לא יכול להיות בעתיד
ALTER TABLE "Payment"
ADD CONSTRAINT check_payment_date_not_future
CHECK ("Payment_Date" <= CURRENT_DATE);



-- ============ טבלה: Waiter ============

-- ניסיון עבודה חיובי
ALTER TABLE "Waiter"
ADD CONSTRAINT check_experience_positive
CHECK ("Work_Experience" >= 0);

-- שם מלצר ייחודי
ALTER TABLE "Waiter"
ADD CONSTRAINT unique_waiter_name
UNIQUE ("Full_Name");

-- ניסיון עבודה מקסימלי 40 שנה
ALTER TABLE "Waiter"
ADD CONSTRAINT check_experience_reasonable
CHECK ("Work_Experience" <= 40);



-- ============ טבלה: Customer ============

-- שם מלא לפחות 2 תווים
ALTER TABLE "Customer"
ADD CONSTRAINT check_customer_name_length
CHECK (char_length("Full_Name") >= 2);

-- סטטוס SMS לא יכול להיות NULL
ALTER TABLE "Customer"
ALTER COLUMN "sms_status_RestOrder" SET NOT NULL;

-- שם לקוח לא יכול להכיל מספרים
ALTER TABLE "Customer"
ADD CONSTRAINT check_customer_name_alpha
CHECK ("Full_Name" ~ '^[A-Za-z ]+$');



-- ============ טבלה: RestTable ============

-- מספר מושבים בין 1 ל-20
ALTER TABLE "RestTable"
ADD CONSTRAINT check_seats_range
CHECK ("Seats" BETWEEN 1 AND 20);

-- סטטוס תקין ('Available', 'Occupied', 'Reserved')
ALTER TABLE "RestTable"
ADD CONSTRAINT check_table_status
CHECK ("Status0" IN ('Available', 'Occupied', 'Reserved'));



-- ============ טבלה: RestOrder ============

-- סכום ההזמנה חיובי
ALTER TABLE "RestOrder"
ADD CONSTRAINT check_total_price
CHECK ("Total_price" > 0);

-- תאריך ההזמנה לא יכול להיות בעתיד
ALTER TABLE "RestOrder"
ADD CONSTRAINT check_order_date
CHECK ("Order_DateTime" <= CURRENT_DATE);

-- סטטוס ברירת מחדל להזמנה
ALTER TABLE "RestOrder"
ALTER COLUMN "Status0" SET DEFAULT 'Open';

-- Foreign keys כבר קיימים בקוד שלך, אבל אפשר להוסיף cascading לדוגמה:
ALTER TABLE "RestOrder"
DROP CONSTRAINT IF EXISTS "RestOrder_Customer_ID_fkey",
ADD CONSTRAINT "RestOrder_Customer_ID_fkey"
FOREIGN KEY ("Customer_ID") REFERENCES "Customer"("Customer_ID")
ON DELETE CASCADE;

-- אותו דבר ל-Waiter:
ALTER TABLE "RestOrder"
DROP CONSTRAINT IF EXISTS "RestOrder_Waiter_ID_fkey",
ADD CONSTRAINT "RestOrder_Waiter_ID_fkey"
FOREIGN KEY ("Waiter_ID") REFERENCES "Waiter"("Waiter_ID")
ON DELETE SET NULL;



-- ============ טבלה: part_of_order ============

-- לא יכול להיות הזמנה ללא מנה (כי יש PRIMARY KEY על שניהם יחד, אז מספיק)
-- אבל אפשר גם CHECK לדוגמה: מס' מזהה חיובי
ALTER TABLE "part_of_order"
ADD CONSTRAINT check_order_dish_ids_positive
CHECK ("Order_ID" > 0 AND "Dish_ID" > 0);
