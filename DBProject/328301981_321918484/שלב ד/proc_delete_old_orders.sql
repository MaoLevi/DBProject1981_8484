CREATE OR REPLACE PROCEDURE proc_delete_old_orders(p_days INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM "RestOrder"
    WHERE "RestOrder_DateTime" < NOW() - (p_days || ' days')::INTERVAL;
EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE 'בעיה במחיקת הזמנות ישנות: %', SQLERRM;
END;
$$;