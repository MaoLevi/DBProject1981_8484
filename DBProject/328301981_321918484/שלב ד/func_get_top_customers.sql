CREATE OR REPLACE FUNCTION func_get_top_customers()
RETURNS refcursor AS $$
DECLARE
    cur refcursor;
BEGIN
    OPEN cur FOR
    SELECT c."Customer_ID", c."Full_Name", COUNT(p."order_id") AS total_dishes
    FROM "Customer" c
    JOIN "RestOrder" r ON c."Customer_ID" = r."Customer_ID"
    JOIN part_of_order p ON r."RestOrder_ID" = p."order_id"
    GROUP BY c."Customer_ID", c."Full_Name"
    ORDER BY total_dishes DESC;
    RETURN cur;
END;
$$ LANGUAGE plpgsql;