from flask import Flask, render_template, url_for, flash, redirect
from flask_login import LoginManager, UserMixin, login_user, current_user, logout_user, login_required
import psycopg2
from forms import AdminLoginForm, MemberRegisterForm, ClassRegisterForm, MemberRoutineForm


app = Flask(__name__)
app.config['SECRET_KEY'] = '783657513c858bb1fb338febe85eb1ae'

login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

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


@login_manager.user_loader
def load_admin(user_id):
    cur = conn.cursor()

    cur.execute(f"""SELECT administrator.cpf, person_name, admin_password
                   FROM administrator, person
                   WHERE administrator.cpf = person.cpf
                   AND administrator.cpf = '{user_id}';""")
    query_results = cur.fetchall()

    if len(query_results) == 0:
        return None

    cpf, name, password = query_results[0]

    return admin(cpf, name, password)


class admin(UserMixin):
    def __init__(self, cpf, name, password):
        self.id = cpf
        self.name = name
        self.password = password


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

    conn.commit()
    cur.close()

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

    conn.commit()
    cur.close()

    return render_template('routine.html', member=member, trainer=trainer, routine=routine)


@app.route('/routines/<member_id>/<day>')
def workout(member_id=None, day=None):
    exercises = list()

    cur = conn.cursor()

    # Get strenght exercise information
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

    # Get cardio exercise information
    cur.execute(f"""SELECT exercise_name, exercise_desc, picture_url, 
                equipment_name, duration, intensity
                FROM cardio_exercise, exercise_info, equipment, routine 
                WHERE cardio_exercise.exercise_id = exercise_info.exercise_id
                AND cardio_exercise.day_of_week = '{day}'
                AND routine.member_cpf = '{member_id}'
                AND cardio_exercise.routine_id = routine.id
                AND exercise_info.equipment_id = equipment.id;""")

    query_results = cur.fetchall()

    conn.commit()
    cur.close()

    for line in query_results:
        name, description, picture, equipment, duration, intensity = line

        exercises.append({
            "name": name,
            "description": description,
            "picture": picture,
            "equipment": equipment,
            "duration": duration,
            "intensity": intensity,
            "type": 'cardio'
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

    conn.commit()
    cur.close()

    return render_template('classes.html', classes=class_list)


@app.route('/classes/<class_id>', methods=['GET', 'POST'])
def class_page(class_id=None):
    cur = conn.cursor()

    cur.execute(f"""SELECT id, class_name, class_desc, day_of_week,
                positions, schedule, picture, instructor_cpf
                FROM class
                WHERE class.id = {class_id};""")
    query_results = cur.fetchall()

    class_id, name, description, day, positions, \
        time, picture, instructor_cpf = query_results[0]

    cur.execute(f"""SELECT COUNT(member_cpf)
                FROM member_subscription
                WHERE class_id = {class_id};""")
    query_results = cur.fetchall()

    occupied_positions = query_results[0][0]

    class_data = {
        "name": name,
        "description": description,
        "image": picture,
        "day": day,
        "time": time,
        "occupied_positions": occupied_positions,
        "positions": positions
    }

    cur.execute(f"""SELECT person_name, picture_url
                FROM instructor, person
                WHERE instructor.cpf = person.cpf
                AND instructor.cpf = '{instructor_cpf}';""")
    query_results = cur.fetchall()

    trainer_name, picture_url = query_results[0]

    instructor = {
        "name": trainer_name,
        "picture": picture_url
    }

    cur.execute(f"""SELECT person_name
                FROM member_subscription, person
                WHERE class_id = {class_id}
                AND member_cpf = person.cpf;""")
    query_results = cur.fetchall()

    enrolled_members = [member[0] for member in query_results]

    form = ClassRegisterForm()
    if form.validate_on_submit():
        member_cpf = form.user_id.data

        if occupied_positions >= positions:
            flash(f'This class has no open positions', 'error')
            return redirect(url_for('classes'))

        cur.execute(f"""SELECT person_name, is_premium
                    FROM member, person
                    WHERE member.cpf = '{member_cpf}'
                    AND member.cpf = person.cpf;""")
        query_results = cur.fetchall()

        if len(query_results) == 0:
            flash(f'This member does not exist', 'error')
            return redirect(url_for('classes'))

        person_name, is_premium = query_results[0]

        if is_premium is False:
            flash(f'{person_name} is not a Premium member', 'error')
            return redirect(url_for('classes'))

        cur.execute(f"""INSERT INTO member_subscription (class_id, member_cpf)
                    VALUES ({class_id}, '{member_cpf}')
                    ON CONFLICT (class_id, member_cpf) DO NOTHING;""")

        conn.commit()
        cur.close()

        flash(f'{person_name} was enrolled to {name} class', 'success')
        return redirect(url_for('classes'))
    else:
        if form.errors:
            errors = list(form.errors.keys())
            error = errors[0]
            flash(f'Error in {error}: {form.errors[error][0]}', 'error')

    return render_template('class.html',
                           class_data=class_data,
                           instructor=instructor,
                           enrolled_members=enrolled_members,
                           form=form)


@app.route('/register', methods=['GET', 'POST'])
@login_required
def register():
    cur = conn.cursor()
    cur.execute("""SELECT trainer.cpf, person_name
                FROM trainer, person
                WHERE trainer.cpf = person.cpf;""")
    trainers = cur.fetchall()

    cur.execute("""SELECT id, routine_name
                FROM routine
                WHERE is_standard = TRUE;""")
    query_results = cur.fetchall()
    routines = [(-1, 'Create new routine')]
    routines.extend(query_results)

    form = MemberRegisterForm()

    form.personal_trainer.choices = trainers
    form.routine.choices = routines

    if form.validate_on_submit():
        member_cpf = form.cpf.data
        name = form.name.data
        phone = form.phone_number.data
        picture_url = form.picture_url.data
        date_of_birth = form.date_of_birth.data
        is_premium = True if int(form.is_premium.data) else False
        trainer_cpf = form.personal_trainer.data
        routine = int(form.routine.data) if form.routine.data != -1 else None

        cur.execute(f"""INSERT INTO person (cpf, person_name,
                    phone_number, date_of_birth, picture_url)
                    VALUES ('{member_cpf}', '{name}', '{phone}',
                    TO_DATE('{date_of_birth}', 'YYYY/MM/DD'), '{picture_url}')
                    ON CONFLICT (cpf) DO NOTHING;""")

        cur.execute(f"""INSERT INTO member (cpf, trainer_cpf, is_premium)
                    VALUES ('{member_cpf}', '{trainer_cpf}', {is_premium})
                    ON CONFLICT (cpf) DO NOTHING;""")

        cur.execute(f"""INSERT INTO routine (is_standard, member_cpf)
                    VALUES (FALSE, '{member_cpf}');""")

        cur.execute(
            f"SELECT id FROM routine WHERE member_cpf = '{member_cpf}';")
        routine_id = cur.fetchall()[0][0]

        if routine is not None:
            cur.execute(f"""SELECT day_of_week, duration
                        FROM workout
                        WHERE routine_id = {routine};""")
            workouts = cur.fetchall()

            for day_of_week, duration in workouts:
                cur.execute(f"""INSERT INTO workout (routine_id, day_of_week, duration)
                            VALUES ({routine_id}, '{day_of_week}', {duration});""")

            cur.execute(f"""SELECT day_of_week, exercise_id, duration, intensity
                        FROM cardio_exercise
                        WHERE routine_id = {routine};""")
            exercises = cur.fetchall()

            for day_of_week, exercise_id, duration, intensity in exercises:
                cur.execute(f"""INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id, duration, intensity)
                            VALUES ({routine_id}, '{day_of_week}', {exercise_id}, {duration}, {intensity});""")

            cur.execute(f"""SELECT day_of_week, exercise_id, exercise_sets, repetition, exercise_weight
                        FROM strenght_exercise
                        WHERE routine_id = {routine};""")
            exercises = cur.fetchall()

            for day_of_week, exercise_id, exercise_sets, repetition, exercise_weight in exercises:
                cur.execute(f"""INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
                            exercise_sets, repetition, exercise_weight)
                            VALUES ({routine_id}, '{day_of_week}', {exercise_id}, {exercise_sets}, 
                            {repetition}, {exercise_weight});""")

        conn.commit()
        cur.close()

        member = "Premium Member" if is_premium else "Member"
        flash(f'{name} was registered as a {member}', 'success')

        if routine is None:
            return redirect(url_for('add_exercise', member_id=member_cpf))
        else:
            return redirect(url_for('member_workout', member_id=member_cpf))
    else:
        if form.errors:
            errors = list(form.errors.keys())
            error = errors[0]
            flash(f'Error in {error}: {form.errors[error][0]}', 'error')

    return render_template('register.html', form=form)


@app.route('/add-exercise/<member_id>', methods=['GET', 'POST'])
@login_required
def add_exercise(member_id=None):
    cur = conn.cursor()
    cur.execute("""SELECT exercise_id, exercise_name
                FROM exercise_info;""")
    exercises = cur.fetchall()
    exercises_dict = {exercise_id: name for exercise_id, name in exercises}

    exercises = [(code, name) if len(name) < 25 else (
        code, name[:20]+'...') for code, name in exercises]

    form = MemberRoutineForm()
    form.exercise.choices = exercises

    if form.validate_on_submit():
        cur.execute(f"""SELECT id
                    FROM routine
                    WHERE member_cpf='{member_id}';""")

        routine_id = cur.fetchall()[0][0]

        day = form.day.data
        exercise = form.exercise.data
        sets = form.sets.data
        repetitions = form.repetitions.data
        weight = form.weight.data

        duration = int(sets) * 5

        cur.execute(f"""INSERT INTO workout (routine_id, day_of_week, duration)
                    VALUES ({routine_id}, '{day}', {duration})
                    ON CONFLICT (routine_id, day_of_week) DO UPDATE
                    SET duration = EXCLUDED.duration + workout.duration;""")

        cur.execute(f"""INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
                    exercise_sets, repetition, exercise_weight)
                    VALUES ({routine_id}, '{day}', {exercise}, {sets}, {repetitions}, {weight})
                    ON CONFLICT (routine_id, day_of_week, exercise_id) DO UPDATE
                    SET exercise_weight = EXCLUDED.exercise_weight,
                    exercise_sets = EXCLUDED.exercise_sets,
                    repetition = EXCLUDED.repetition;""")

        conn.commit()
        cur.close()

        exercise_name = exercises_dict[int(exercise)]
        flash(f'Added exercise {exercise_name} to workout on {day}', 'success')
    else:
        if form.errors:
            errors = list(form.errors.keys())
            error = errors[0]
            flash(f'Error in {error}: {form.errors[error][0]}', 'error')

    return render_template('add-exercise.html', form=form, member_id=member_id)


@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        flash('Already logged in', 'info')

        return redirect(url_for('landing_page'))

    cur = conn.cursor()
    form = AdminLoginForm()

    if form.validate_on_submit():
        cpf = form.cpf.data
        input_password = form.password.data

        cur.execute(f"""SELECT administrator.cpf, person_name, admin_password
                    FROM administrator, person
                    WHERE administrator.cpf = '{cpf}'
                    AND administrator.cpf = person.cpf;""")
        query_results = cur.fetchall()

        conn.commit()
        cur.close()

        if len(query_results) == 0:
            flash(f'Invalid CPF', 'error')
        else:
            cpf, name, password = query_results[0]

            if input_password == password:
                login_user(admin(cpf, name, password))
                flash(f'You are logged as admin', 'success')

                return redirect(url_for('landing_page'))
            else:
                flash(f'Wrong password', 'error')
    else:
        if form.errors:
            errors = list(form.errors.keys())
            error = errors[0]
            flash(f'Error in {error}: {form.errors[error][0]}', 'error')

    return render_template('login.html', form=form)


@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('landing_page'))


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
