#code that creates and saves the graph to the server
import produceGraphics
#used getting info from the database
import psycopg2
import sys

email = sys.argv[2]
data = []

print(email)
#connect to the server, to do fill in those things
conn = psycopg2.connect(
    host="localhost",
    port=5432,
    database="SPAM",
    user="postgres",
    password="spAm2468#!"
)



#need to take a look at the database in order to figure out what im actually getting
cur = conn.cursor()
cur.execute("SELECT * FROM users WHERE email=%s", (email,))

rows = cur.fetchall()



produceGraphics.save_line_graph(rows[0], "days", "name of whatever this data is", "graph title", "output.png")