-- Delete all dishes that were never ordered
DELETE FROM "Dish"
WHERE "Dish_ID" NOT IN (
  SELECT DISTINCT "Dish_ID" FROM "part_of_order"
);


-- Delete all customers who never placed an order
DELETE FROM "Customer"
WHERE "Customer_ID" NOT IN (
  SELECT "Customer_ID" FROM "RestOrder"
);


-- Delete payments that are not linked to any order
DELETE FROM "Payment"
WHERE "Payment_ID" NOT IN (
  SELECT "Payment_ID" FROM "RestOrder"
);