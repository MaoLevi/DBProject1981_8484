DO $$
DECLARE
    cur refcursor;
    rec RECORD;
BEGIN
    cur := func_get_top_customers();
    LOOP
        FETCH cur INTO rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'לקוח: %, סה"כ מנות: %', rec."Full_Name", rec.total_dishes;
    END LOOP;
    CLOSE cur;

    CALL proc_update_table_status();
END;
$$;