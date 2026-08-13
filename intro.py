# mysql-connector-python

import mysql.connector 

connector = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="company_2db"
)

if connector.is_connected():
    print("database connected")

cursor = connector.cursor()
# cursor.execute("select * from employee")
# rows = cursor.fetchall()
# for i in rows:
#     print(i)

cursor.execute("select location,count(*) from employee group by location")
rows = cursor.fetchall()
for i in rows:
    print(i)

cursor.close()
connector.close()