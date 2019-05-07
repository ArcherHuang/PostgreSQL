# Install Library
# pip install psycopg2

# Use library
import psycopg2

# Open  db connection
conn_string = "host='localhost' dbname='abc' user='postgres' password='t713345'"
conn = psycopg2.connect(conn_string)

# Write data on database
cursor = conn.cursor()
cursor.execute("INSERT INTO ithelp1220a(memo) VALUES (%s);", ('tablette',))
conn.commit()

# Close db connection
cursor.close()
conn.close()