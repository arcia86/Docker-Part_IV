from flask import render_template
from app import app

@app.route('/')
def home():
   return "hello world!!!!"
@app.route('/template')
def template():
    return render_template('home.html')

@app.route('/sql', methods=['GET'])
def sql():
    import psycopg2
    conn = psycopg2.connect(host="db_app",database="test", user="admin", password="admin")

    cur = conn.cursor()

    cur.execute('SELECT * FROM link')
    data = cur.fetchone()
    return data[2]
