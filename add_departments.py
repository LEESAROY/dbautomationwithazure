import pymysql  

connection = pymysql.connect(
    host=os.getenv('MYSQL_HOST'),  
    user=os.getenv('MYSQL_USER'),  
    password=os.getenv('MYSQL_PASSWORD'),
    database=os.getenv('MYSQL_DATABASE')
)

script_path = 'add_departments.sql'

with open(script_path, 'r') as file:
    sql_script = file.read()

cursor = connection.cursor()

for statement in sql_script.split(';'):
    if statement.strip():
        cursor.execute(statement)

connection.commit()

cursor.close()

connection.close()

print("Execution completed successfully")
