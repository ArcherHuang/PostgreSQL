# Install Library
# pip install psycopg2

# Use library
import psycopg2
import time

parentPath = 'D:\\images\\'

# imageFile = 'small.png'
imageFile = 'big.png'

# downloadFile = 'small_download.png'
downloadFile = 'big_download.png'

fullSourcePath = parentPath + imageFile
fullDownloadPath = parentPath + downloadFile

# Open  db connection
conn_string = "host='localhost' dbname='postgres' user='postgres' password='t713345'"
conn = psycopg2.connect(conn_string)

# Write image on database (binary data on bytea column)

start = time.clock()
mypic=open(fullSourcePath,'rb').read()
end = time.clock()
totalTime = end - start
print("1. Read Image time: ", totalTime, "second", "start:", start, "end:", end)

start = time.clock()
cursor = conn.cursor()
cursor.execute("INSERT INTO imagetest(id,category_image) VALUES (%s,%s);", (1, psycopg2.Binary(mypic)))
conn.commit()

end = time.clock()
totalTime = end - start
print("2. Write Image to pg time: ", totalTime, "second", "start:", start, "end:", end)

# Read image from database and write to a file
start = time.clock()
cursor = conn.cursor()
cursor.execute("SELECT (category_image) FROM imagetest WHERE id=1;")
mypic2 = cursor.fetchone()

end = time.clock()
totalTime = end - start
print("3. get record from pg time: ", totalTime, "second", "start:", start, "end:", end)

start = time.clock()
open(fullDownloadPath, 'wb').write(str(mypic2[0]))

# Close db connection
cursor.close()
conn.close()

end = time.clock()
totalTime = end - start
print("4. get record and write image to HDD time: ", totalTime, "second", "start:", start, "end:", end)