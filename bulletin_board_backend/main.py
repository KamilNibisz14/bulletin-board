from flask import Flask, request

from loginUser.checkIfUserInDatabaseValid import checkIfUserInDatabaseValid
from registerUser.checkIfUsernameExist import checkIfUsernameExist
from registerUser.registerUser import registerUser

app = Flask(__name__)


@app.route('/register', methods=['POST'])
def register():
    data = request.json
    if checkIfUsernameExist(data['username']):
        return "Username exist"
    else:
        registerUser(data)
    return 'OK'


@app.route('/login', methods=['POST'])
def login():
    data = request.json
    if checkIfUsernameExist(data['username']):
        return checkIfUserInDatabaseValid(data)
    else:
        return 'Username not exist'


if __name__ == '__main__':
    app.run()
