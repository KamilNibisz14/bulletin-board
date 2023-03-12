import sqlite3


def check_username(username):
    conn = sqlite3.connect('../bulletin_board.db')
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM users WHERE username=?", (username,))
    result = cursor.fetchone()

    if result is None:
        return False
    else:
        return True

    conn.close()