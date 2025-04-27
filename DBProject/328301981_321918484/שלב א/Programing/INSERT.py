import csv
import os

csv_folder = "csv_files"
output_folder = "sql_output"
os.makedirs(output_folder, exist_ok=True)


tables = [
    "Dish",
    "Payment",
    "Waiter",
    "Customer",
    "RestTable",
    "RestOrder",
    "part_of_order"
]

#  פונקציה להמרת ערך לתוך SQL (מספרים, תאריכים, טקסט
def format_value(val):
    val = val.strip()
    if val == "":
        return "NULL"
    try:
        float(val)  # לבדוק אם זה מספר
        return val
    except ValueError:
        if '-' in val and len(val.split('-')) == 3:  # תאריך (פורמט: YYYY-MM-DD)
            return f"'{val}'"
        safe_val = val.replace("'", "''")  # לברוח גרשיים
        return f"'{safe_val}'"

#  עיבוד כל קובץ
for table in tables:
    csv_path = os.path.join(csv_folder, f"{table}.csv")
    sql_path = os.path.join(output_folder, f"{table}.sql")

    with open(csv_path, mode='r', encoding='utf-8') as csv_file:
        reader = csv.reader(csv_file)
        headers = next(reader)  # שורת כותרת

        with open(sql_path, mode='w', encoding='utf-8') as sql_file:
            for row in reader:
                values = [format_value(v) for v in row]
                insert_stmt = f"INSERT INTO {table} ({', '.join(headers)}) VALUES ({', '.join(values)});"
                sql_file.write(insert_stmt + "\n")

