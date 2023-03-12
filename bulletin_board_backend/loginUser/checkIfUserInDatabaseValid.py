import sqlite3

from md5 import hashPassword


def checkIfUserInDatabaseValid(data):
    username = data['username']
    password = data['password']
    password = hashPassword(password).hexdigest()

    conn = sqlite3.connect('./bulletin_board.db')
    c = conn.cursor()

    User = c.execute("SELECT * FROM users WHERE username=?", (username,)).fetchone()
    if User[1] == username and password == User[2]:
        return str(User[0])
    else:
        return -1
    conn.commit()
    conn.close()



