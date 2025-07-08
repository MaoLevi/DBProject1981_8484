CREATE OR REPLACE PROCEDURE proc_update_table_status()
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE "RestTable"
    SET "Status" = 'פנוי'
    WHERE "RestTable_ID" IN (
        SELECT t."RestTable_ID"
        FROM "RestTable" t
        LEFT JOIN "RestOrder" r ON t."RestTable_ID" = r."RestTable_ID"
        WHERE r."RestOrder_DateTime" < NOW() - INTERVAL '30 minutes'
        OR r."RestOrder_DateTime" IS NULL
    );
END;
$$;