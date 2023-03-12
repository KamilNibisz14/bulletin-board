import sqlite3

conn = sqlite3.connect('bulletin_board.db')

c = conn.cursor()

c.execute('''CREATE TABLE users
             (ID INTEGER PRIMARY KEY,
              username TEXT,
              password TEXT,
              phone TEXT,
              country TEXT,
              city TEXT)''')

c.execute('''CREATE TABLE announcements
             (ID INTEGER PRIMARY KEY,
              title TEXT,
              description TEXT,
              price TEXT,
              userID INTEGER,
              FOREIGN KEY(userID) REFERENCES users(ID))''')

conn.commit()
conn.close()