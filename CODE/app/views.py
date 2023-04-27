from app.controller import Phong_controller, tour_controller, login_controller, signup_controller
from flask import Flask, render_template, request, redirect, url_for, session
# from flask_login import login_required, LoginManager, UserMixin, login_user
import base64


app = Flask(__name__)

app.config["SECRET_KEY"] = b'_5#y2L"F4Q8z\n\xec]/'

# Khai báo login manager

def base64encode(value):
    return base64.b64encode(value.encode('utf-8')).decode('utf-8')

app.jinja_env.filters['b64encode'] = base64encode

@app.route('/home')
def home():
    controller = Phong_controller

    typeroom = controller.get_typeroom()
    service = controller.get_service()
    room = controller.get_room_empty()

    return render_template('home.html' , typeroom = typeroom , services = service , rooms = room)

# @app.route('/index')
# def index():
#     controller = Phong_controller

#     typeroom = controller.get_typeroom()
#     service = controller.get_service()
#     room = controller.get_room_empty()
#     username = session.get('username')

#     return render_template('home.html' , typeroom = typeroom , services = service , rooms = room)

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
    username = request.form['username'].upper()
    password = request.form['password'].upper()

    for account in accounts:
        if account[0]== username and account[1] == password:
            session['username'] = username
            session['logged_in'] = True
            return redirect(url_for('home'))
        
    message = "Thông tin không hợp lệ!"
    return render_template('login.html', message=message)

@app.route('/logout', methods=['POST'])
def logout():
    # Xóa thông tin đăng nhập trong session
    session.pop('username', None)
    session['logged_in'] = False
    return redirect(url_for('home'))


@app.route('/signup')
def signup():
    return render_template('signup.html')


@app.route('/signup', methods=['POST'])
def process_signup():
    logincontroller = login_controller
    signupcontroller = signup_controller

    accounts = logincontroller.get_login()

    user_firstname = request.form['user_firstname']
    user_lastname = request.form['user_lastname']
    confirm_password =request.form['confirm-password']
    password = request.form['password']
    user_address = request.form['user_address']
    user_email = request.form['user_email']
    user_phone = request.form['user_phone']
    user_username = request.form['user_username'].upper()

    user_id= request.form['user_id']
    user_fullname = user_lastname + user_firstname

    if len(password) > 50 or len(user_firstname) > 10 or len(user_address) > 100 or len(user_email) > 50 or len(user_phone) > 20 or len(user_username) > 50 or len(user_id) > 20:
        message = "Độ dài thông tin không hợp lệ"
        return render_template('signup.html', message=message)


    if password != confirm_password:
        message = "Xác nhận tài khoản không giống"
        return render_template('signup.html', message=message)

    for account in accounts:
        if account[0] == user_username:
            message = "Tài khoản đã tồn tại"
            return render_template('signup.html', message=message)
        
    save_account, er1= signupcontroller.save_account(user_username, password)
    if er1 == 0:
        save_customer ,er2 = signupcontroller.save_customer(user_id, user_fullname, user_address, user_phone, user_email, user_username)
        if er2 == 0:
            return redirect(url_for('login'))
    message = "Đăng ký thất bại"
    return render_template('signup.html', message=message)
        
@app.route('/profile')
def profile():
    return render_template('profile.html')

@app.route('/room_item')
def room_item():
    room_id = base64.b64decode(request.args.get('room_id')).decode('utf-8')
    controller = Phong_controller
    rooms = controller.get_typeroom_item(room_id)
    name_type = controller.get_nametype(room_id)
    return render_template('rooms_item.html', rooms = rooms, name_type = name_type)

@app.route('/booking')
def booking():
    return render_template('booking.html', rooms = rooms)