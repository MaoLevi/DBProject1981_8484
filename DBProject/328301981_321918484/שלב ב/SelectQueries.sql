-- Get all dishes that take more than 20 minutes to prepare, along with the customer and waiter names
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



-- Calculate the total revenue per day of the week
SELECT 
  TO_CHAR("RestOrder"."RestOrder_DateTime",'FMDay') AS "Day", 
  SUM("RestOrder"."Total_price") AS "DailyRevenue"
FROM "RestOrder"
GROUP BY "Day"
ORDER BY "DailyRevenue" DESC;

-- Find customers who ordered more than one dish
SELECT 
  "Customer"."Full_Name", 
  COUNT("part_of_order"."Dish_ID") AS "DishesOrdered"
FROM "Customer"
JOIN "RestOrder" ON "Customer"."Customer_ID" = "RestOrder"."Customer_ID"
JOIN "part_of_order" ON "RestOrder"."RestOrder_ID" = "part_of_order"."RestOrder_ID"
GROUP BY "Customer"."Full_Name"
HAVING COUNT("part_of_order"."Dish_ID") > 1;


-- Get dishes that were never ordered
SELECT 
  "Dish"."Dish_Name"
FROM "Dish"
WHERE "Dish"."Dish_ID" NOT IN (
  SELECT DISTINCT "Dish_ID" FROM "part_of_order"
);


-- Find waiters whose average order price is greater than 100
SELECT 
  "Waiter"."Full_Name", 
  AVG("RestOrder"."Total_price") AS "AvgOrder"
FROM "Waiter"
JOIN "RestOrder" ON "Waiter"."Waiter_ID" = "RestOrder"."Waiter_ID"
GROUP BY "Waiter"."Full_Name"
HAVING AVG("RestOrder"."Total_price") > 100;



-- Calculate total revenue grouped by payment method
SELECT 
  "Payment"."Payment_Method", 
  SUM("RestOrder"."Total_price") AS "TotalPaid"
FROM "Payment"
JOIN "RestOrder" ON "Payment"."Payment_ID" = "RestOrder"."Payment_ID"
GROUP BY "Payment"."Payment_Method";



-- Get all orders made during the current month (PostgreSQL version)
SELECT *
FROM "RestOrder"
WHERE DATE_TRUNC('month', "RestOrder"."RestOrder_DateTime") = DATE_TRUNC('month', CURRENT_DATE);



-- Count how many times each dish was ordered, grouped by category (ensuring all dishes appear)
SELECT 
  "Dish"."Category", 
  "Dish"."Dish_Name", 
  COALESCE(COUNT("part_of_order"."RestOrder_ID"), 0) AS "TimesOrdered"
FROM "Dish"
LEFT JOIN "part_of_order" ON "Dish"."Dish_ID" = "part_of_order"."Dish_ID"
GROUP BY "Dish"."Category", "Dish"."Dish_Name"
ORDER BY "TimesOrdered" DESC;




