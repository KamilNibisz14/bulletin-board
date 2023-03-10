import sqlite3

from md5 import hashPassword


def registerUser(data):
    username = data['username']
    password = data['password']
    phone = data['phone']
    country = data['country']
    city = data['city']
    password = hashPassword(password).hexdigest()
    conn = sqlite3.connect('./bulletin_board.db')
    c = conn.cursor()

    c.execute("INSERT INTO users (username, password, phone, country, city) VALUES (?, ?, ?, ?, ?)",
              (username, password, phone, country, city))

    conn.commit()
    conn.close()

