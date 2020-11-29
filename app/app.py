from flask import Flask, render_template, url_for

app = Flask(__name__)

members_data = {
    "12352352": {
        "name": "Brad Gibson",
        "id": "12352352",
        "picture": "https://randomuser.me/api/portraits/men/33.jpg",
        "is_premium": False
    },
    "63546352": {
        "name": "Vincent Fletcher",
        "id": "63546352",
        "picture": "https://randomuser.me/api/portraits/men/75.jpg",
        "is_premium": True
    }
}

routine_data = {
    "12352352": {
        "monday": [{
            "name": "Bench Press",
            "repetitions": 5,
            "sets": 5,
            "weight": 70,
            "type": 'strenght'
        }],
        "tuesday": None,
        "wednesday": [{
            "name": "Bench Press",
            "repetitions": 5,
            "sets": 5,
            "weight": 70,
            "type": 'strenght'
        },{
            "name": "Treadmill",
            "duration": 30,
            "intensity": 8,
            "type": 'cardio'
        }],
        "thursday": None,
        "friday": None,
        "saturday": None
    },
    "63546352": {
        "name": "Vincent Fletcher",
        "id": "63546352",
        "picture": "https://randomuser.me/api/portraits/men/75.jpg",
        "is_premium": True
    }
}

classes_data = {
    "1234": {
        "name": "yoga",
        "description": "Yoga class for people interested in yoga.",
        "image": "yoga-class.jpeg",
        "day": "monday",
        "time": "8:30"
    },
    "4567": {
        "name": "boxing",
        "description": "Boxing class for people interested in boxing.",
        "image": "boxing-class.jpeg",
        "day": "thurday",
        "time": "15:30"
    }
}

@app.route('/')
def landing_page():
    return render_template('index.html')

@app.route('/members')
def members():
    members_array = list()
    member_tuple = list()

    for member in members_data.values():
        member_tuple.append(member)

        if len(member_tuple) == 2:
            members_array.append(member_tuple.copy())
            member_tuple.clear()

    return render_template('members.html', members=members_array)

@app.route('/routine/<member_id>')
def member_workout(member_id=None):
    if member_id == None:
        return members()
    
    member = members_data[member_id]
    routine = routine_data[member_id]

    return render_template('routine.html', member=member, routine=routine)

@app.route('/classes')
def classes():
    return render_template('classes.html', classes=classes_data.values())

if __name__ == '__main__':
    app.run(debug=True)
