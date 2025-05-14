-- Set table status to 'Available' for tables where payment is marked as 'Completed'
UPDATE "RestTable"
SET "Status" = 'Available'
WHERE "RestTable_ID" IN (
  SELECT "RestOrder"."RestTable_ID"
  FROM "RestOrder"
  JOIN "Payment" ON "RestOrder"."Payment_ID" = "Payment"."Payment_ID"
  WHERE "Payment"."Payment_Status" = 'Completed'
);
UPDATE "Dish"
SET time_to_make = DATE_TRUNC('minute', '00:00'::time + (RANDOM() * INTERVAL '60 minutes'))::time;


-- Update sms status to 'Order Confirmed' for customers with an order on a specific date
UPDATE "Customer"
SET "sms_status_RestOrder" = 'Order Confirmed'
WHERE "Customer_ID" IN (
  SELECT "Customer_ID"
  FROM "RestOrder"
  WHERE "RestOrder_DateTime"::date = '2024-05-01'
);


-- Update preparation time to 40 minutes for expensive dishes (price > 120)
UPDATE "Dish"
SET "time_to_make" = '00:40:00'
WHERE "Dish"."price" > 400;


