from flask import Flask, request

from registerUser.chechIfuserExist import check_username
from registerUser.registerUser import registerUser

app = Flask(__name__)


@app.route('/registerUser', methods=['POST'])
def register():
    data = request.json
    if check_username(data['username']):
        return "Username exist"
    else:
        registerUser(data)
    return 'OK'


@app.route('/login', methods=['POST'])
def login():
    data = request.json
    if check_username(data['username']):
        return "Username exist"
    else:
        registerUser(data)
    return 'OK'


if __name__ == '__main__':
    app.run()
