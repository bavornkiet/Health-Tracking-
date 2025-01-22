import cgi
import psycopg2

form = cgi.FieldStorage()
step_goal = form.getvalue('mySlider')
move_goal = form.getvalue('mySlider2')
avg_exercise = form.getvalue('avgexercise')
avg_stand = form.getvalue('avgestand')
heart_beat = form.getvalue('heart')


conn = psycopg2.connect(
    host="localhost",
    port=5432,
    database="SPAM",
    user="postgres",
    password="spAm2468#!"
)

# Update data in PostgreSQL database
cur = conn.cursor()
cur.execute(
    'UPDATE goals SET stepGoal = %d, moveGoal = %d, avgExerciseTime = %d, avgStandTime = %d, avgRestHeartBeat = %d',
    (step_goal, move_goal, avg_exercise, avg_stand, heart_beat)
)
conn.commit()

# Close database connection
cur.close()
conn.close()

print('Location: view.html')
print()
