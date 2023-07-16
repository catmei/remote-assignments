from flask import Flask, request, render_template, make_response

app = Flask(__name__)


@app.route('/')
def index():
    return "Welcome to Catvin's Page"


@app.route('/data')
def cum_sum():
    number = request.args.get('number')

    if not number:
        response = "Lack of Parameter"
    else:
        try:
            number = int(number)
            response = str(int((1 + number) * number / 2))
        except ValueError:
            response = 'Wrong Parameter'

    return response


@app.route('/myName')
def login():
    user_name = request.cookies.get('username')

    if user_name:
        response = f'User Name: {user_name}'
    else:
        response = render_template('name.html')

    return response


@app.route('/trackName')
def track_name():
    name = request.args.get('name')
    response = make_response()
    response.set_cookie('username', name)
    return response


@app.route('/sum.html')
def visit_sum():
    return render_template('sum.html')


app.run(debug=True, port=3000, host='0.0.0.0')
