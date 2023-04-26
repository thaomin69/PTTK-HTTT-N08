from app.controller import Phong_controller, tour_controller, login_controller
from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/home')
def home():
    controller = Phong_controller
    typeroom = controller.get_typeroom()
    service = controller.get_service()
    room = controller.get_room_empty()
    return render_template('index.html' , typeroom = typeroom , services = service , rooms = room)

@app.route('/rooms')
def rooms():
    controller = Phong_controller
    room = controller.get_room()
    return render_template('rooms.html', rooms = room)

@app.route('/events')
def events():
    controller = tour_controller
    tour = controller.get_tour()

    return render_template('events.html' ,tours = tour)
      
@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/contact')
def contact():
    return render_template('contact.html')

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/login', methods=['POST'])
def process_login():
    controller = login_controller
    accounts = controller.get_login()
    username = request.form['username']
    password = request.form['password']
    for account in accounts:
        if account[0] == username and account[1] == password:
            return "thành công"
        else:
            return "thất bại"


@app.route('/signup')
def signup():
    return render_template('signup.html')
