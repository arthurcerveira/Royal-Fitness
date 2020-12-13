from pprint import pprint

from flask import Flask, render_template, url_for
import psycopg2

app = Flask(__name__)
db_connection = False

print('Trying to connect to Postgres...')

while db_connection is False:
    try:
        conn = psycopg2.connect(host="db",
                                port=5432,
                                database="royal_fitness_dev",
                                user="royal_fitness",
                                password="royal_fitness",
                                options="-c search_path=royal_fitness_schema")
        db_connection = True
    except:
        pass

print('Postgres is now connected.')


@app.route('/')
def landing_page():
    return render_template('index.html')


@app.route('/routines')
def members():
    cur = conn.cursor()

    cur.execute("""SELECT member.cpf, person_name, is_premium, picture_url 
                   FROM member, person 
                   WHERE member.cpf = person.cpf;""")
    query_results = cur.fetchall()

    members_list = list()

    for data in query_results:
        cpf, name, is_premium, picture = data

        members_list.append({
            "name": name,
            "id": cpf,
            "picture": picture,
            "is_premium": is_premium
        })

    return render_template('members.html', members=members_list)


@app.route('/routines/<member_id>')
def member_workout(member_id=None):
    cur = conn.cursor()

    # Get member information
    cur.execute(f"""SELECT member.cpf, person_name, is_premium, picture_url, trainer_cpf
                   FROM member, person 
                   WHERE member.cpf = '{member_id}'
                   AND person.cpf = '{member_id}';""")
    query_results = cur.fetchall()

    cpf, name, is_premium, picture, trainer_cpf = query_results[0]

    member = {
        "name": name,
        "id": cpf,
        "picture": picture,
        "is_premium": is_premium
    }

    # Get trainer information
    cur = conn.cursor()

    cur.execute(f"""SELECT person_name, picture_url
                   FROM trainer, person 
                   WHERE trainer.cpf = '{trainer_cpf}'
                   AND person.cpf = '{trainer_cpf}';""")
    query_results = cur.fetchall()

    name, picture = query_results[0]

    trainer = {
        "name": name,
        "picture": picture,
    }

    # Get workout information
    cur.execute(f"""SELECT day_of_week, duration
                FROM workout, routine 
                WHERE routine.member_cpf = '{member_id}'
                AND workout.routine_id = routine.id;""")

    query_results = cur.fetchall()

    routine = {
        'sunday': None,
        'monday': None,
        'tuesday': None,
        'wednesday': None,
        'thursday': None,
        'friday': None,
        'saturday': None,
    }

    for data in query_results:
        day, time = data
        routine[day] = time

    return render_template('routine.html', member=member, trainer=trainer, routine=routine)


@app.route('/routines/<member_id>/<day>')
def workout(member_id=None, day=None):
    exercises = list()

    cur = conn.cursor()

    # Get workout information
    cur.execute(f"""SELECT exercise_name, exercise_desc, picture_url, 
                equipment_name, exercise_sets, repetition, exercise_weight
                FROM strenght_exercise, exercise_info, equipment, routine 
                WHERE strenght_exercise.exercise_id = exercise_info.exercise_id
                AND strenght_exercise.day_of_week = '{day}'
                AND routine.member_cpf = '{member_id}'
                AND strenght_exercise.routine_id = routine.id
                AND exercise_info.equipment_id = equipment.id;""")

    query_results = cur.fetchall()

    for line in query_results:
        name, description, picture, equipment, sets, repetitions, weight = line

        exercises.append({
            "name": name,
            "description": description,
            "picture": picture,
            "equipment": equipment,
            "sets": sets,
            "repetitions": repetitions,
            "weight": weight,
            "type": 'strenght'
        })

    return render_template('workout.html', exercises=exercises, member_id=member_id)


@app.route('/classes')
def classes():
    cur = conn.cursor()

    cur.execute("""SELECT * FROM class;""")
    query_results = cur.fetchall()

    class_list = list()

    for data in query_results:
        class_id, name, description, day, positions, time, picture, *_ = data

        class_list.append({
            "id": class_id,
            "name": name,
            "description": description,
            "image": picture,
            "day": day,
            "time": time
        })

    return render_template('classes.html', classes=class_list)


@app.route('/classes/<class_id>')
def class_page(class_id=None):
    cur = conn.cursor()

    cur.execute(f"""SELECT class_name, class_desc, day_of_week,
                positions, schedule, picture, instructor_cpf
                FROM class
                WHERE class.id = {class_id};""")
    query_results = cur.fetchall()

    name, description, day, positions, time, picture, instructor_cpf = query_results[0]

    class_data = {
        "name": name,
        "description": description,
        "image": picture,
        "day": day,
        "time": time
    }

    cur.execute(f"""SELECT person_name, picture_url
                FROM instructor, person
                WHERE instructor.cpf = person.cpf
                AND instructor.cpf = '{instructor_cpf}';""")
    query_results = cur.fetchall()

    name, picture_url = query_results[0]

    instructor = {
        "name": name,
        "picture": picture_url
    }

    return render_template('class.html', class_data=class_data, instructor=instructor)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
