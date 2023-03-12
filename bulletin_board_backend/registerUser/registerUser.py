import sqlite3
import hashlib


def registerUser(data):
    username = data['username']
    password = data['password']
    phone = data['phone']
    country = data['country']
    city = data['city']
    password = hashPassword(password).hexdigest()
    print(password)
    # Open a connection to the database
    conn = sqlite3.connect('../bulletin_board.db')
    c = conn.cursor()

    # Insert the data into the users table
    c.execute("INSERT INTO users (username, password, phone, country, city) VALUES (?, ?, ?, ?, ?)",
              (username, password, phone, country, city))

    # Commit the changes and close the connection
    conn.commit()
    conn.close()


def hashPassword(password):
    return hashlib.md5(password.encode())
