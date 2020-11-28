from flask import Flask, render_template, url_for

app = Flask(__name__)

@app.route('/')
def landing_page():
    return render_template('index.html')

@app.route('/members')
def members():
    members_data = [
        ({
            "name": "Arthur",
            "id": "12352352",
            "picture": "https://randomuser.me/api/portraits/men/33.jpg",
            "is_premium": False
        },
        {
            "name": "Alves",
            "id": "63546352",
            "picture": "https://randomuser.me/api/portraits/men/75.jpg",
            "is_premium": True
        })
    ]

    return render_template('members.html', members=members_data)

@app.route('/members/<id>')
def member_workout(id=None):
    if id == None:
        return members()

    return render_template('workout.html', id=id)

@app.route('/classes')
def classes():
    return render_template('classes.html')
