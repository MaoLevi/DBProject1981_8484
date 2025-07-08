DO $$
DECLARE
    total NUMERIC;
BEGIN
    total := func_calc_order_total(1);
    RAISE NOTICE 'סכום כולל להזמנה 1: %', total;

    CALL proc_delete_old_orders(30);
END;
$$;