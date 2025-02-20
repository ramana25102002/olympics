from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

# Database Connection
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",         # Change this if needed
        password="",         # Your MySQL password
        database="olympics_db"
    )

# Home Page with Input Form
@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        olympic_year = request.form.get("year")
        player_name = request.form.get("player_name")
        sport = request.form.get("sport")
        country = request.form.get("country")
        medal_type = request.form.get("medal")  # Get medal type input

        # Connect to database
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        # Dynamic Query Filtering
        query = "SELECT * FROM olympic_winners WHERE 1=1"
        params = []

        if olympic_year:
            query += " AND olympic_year = %s"
            params.append(olympic_year)
        if player_name:
            query += " AND player_name LIKE %s"
            params.append(f"%{player_name}%")
        if sport:
            query += " AND sport LIKE %s"
            params.append(f"%{sport}%")
        if country:
            query += " AND native_country LIKE %s"
            params.append(f"%{country}%")
        if medal_type:
            query += " AND medal_type = %s"
            params.append(medal_type)

        cursor.execute(query, params)
        records = cursor.fetchall()
        
        cursor.close()
        conn.close()

        return render_template("result.html", records=records)

    return render_template("index.html")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)

