from flask import Flask, request, render_template
import pymysql.cursors
import json

with open('config.json', 'r') as file:
    config = json.load(file)

connection = pymysql.connect(host='localhost',
                             user=config['user'],
                             password=config['password'],
                             database='assignment',
                             cursorclass=pymysql.cursors.DictCursor)

app = Flask(__name__)


@app.route('/')
def index():
    return "Welcome to Catvin's Page"


@app.route('/home')
def home():
    return render_template('homepage.html')


@app.route('/signup')
def sign_up():
    email = request.args.get('email')
    password = request.args.get('password')

    if not email or not password:
        resp = "lack of email or password"
    else:
        if check_register(email):
            resp = 'email has been registered'
        else:
            create_account(email, password)
            resp = 'sign up successfully!'
    return resp


@app.route('/signin')
def sign_in():
    email = request.args.get('email')
    password = request.args.get('password')

    if not email or not password:
        resp = "lack of email or password"
    else:
        if not check_register(email):
            resp = 'email has NOT been registered'
        else:
            if check_sign_in(email, password):
                resp = 'sign in successfully!'
            else:
                resp = 'wrong password'
    return resp


@app.route('/member')
def member():
    return render_template('member.html')


def check_register(email):
    with connection.cursor() as cursor:
        sql = f"SELECT * FROM user WHERE email='{email}'"
        cursor.execute(sql)
        result = cursor.fetchone()
    if result:
        return True
    else:
        return False


def create_account(email, password):
    with connection.cursor() as cursor:
        sql = f"INSERT INTO user (email, password) VALUES ('{email}', '{password}')"
        cursor.execute(sql)
        connection.commit()


def check_sign_in(email, password):
    with connection.cursor() as cursor:
        sql = f"SELECT * FROM user WHERE email='{email}'"
        cursor.execute(sql)
        result = cursor.fetchone()

    if result['password'] == password:
        return True
    else:
        return False


app.run(debug=True, port=3000, host='0.0.0.0')
