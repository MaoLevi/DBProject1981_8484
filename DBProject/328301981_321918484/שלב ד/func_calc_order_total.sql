CREATE OR REPLACE FUNCTION func_calc_order_total(p_order_id INT)
RETURNS NUMERIC AS $$  
DECLARE  
    total NUMERIC := 0;  
BEGIN  
    SELECT SUM(d.price)  
    INTO total  
    FROM part_of_order p  
    JOIN "Dish" d ON p.dish_id = d."Dish_ID"  
    WHERE p.order_id = p_order_id;  
  
    RETURN COALESCE(total, 0);  
END;  
$$ LANGUAGE plpgsql;