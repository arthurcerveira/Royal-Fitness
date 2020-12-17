# Create DML file based on JSON data
import json

DML = open("./postgres/script/DML-API.sql", "w")

# Add people data to DB
DML.write("-- PEOPLE\n"
          + "INSERT INTO person (cpf, person_name, date_of_birth, "
          + "phone_number, picture_url)\n"
          + "VALUES\n")

with open("./json/people.json") as people_json:
    people_data = json.load(people_json)["results"]

for person in people_data:
    cpf = person['cpf']
    name = person["name"]
    dob = f"TO_DATE('{person['date_of_birth']}', 'YYYY/MM/DD')"
    phone = person['phone_number']
    picture = person['picture_url']

    values = f"\t('{cpf}', '{name}', {dob}, '{phone}', '{picture}'),\n" \
        if people_data[-1]["cpf"] != cpf \
        else f"\t('{cpf}', '{name}', {dob}, '{phone}', '{picture}')\n"

    DML.write(values)

DML.write("ON CONFLICT (cpf) DO NOTHING;\n\n")

# Add equipment data to DB
DML.write("-- EQUIPMENT\n"
          + "INSERT INTO equipment (id, equipment_name)\n"
          + "VALUES\n")

with open("./json/equipment.json") as equipment_json:
    equipment_data = json.load(equipment_json)["results"]

equipment_data.append({
    "name": 'No equipment',
    "id": 0
})

for equipment in equipment_data:
    name = equipment["name"]
    equipment_id = equipment["id"]

    values = f"\t({equipment_id}, '{name}'),\n" \
        if equipment_data[-1]["id"] != equipment_id \
        else f"\t({equipment_id}, '{name}')\n"

    DML.write(values)

DML.write("ON CONFLICT (id) DO NOTHING;\n\n")

# Get muscle data
with open("./json/muscle.json") as muscle_json:
    muscle_data = json.load(muscle_json)["results"]

muscles_dict = {muscle["id"]: muscle["name"]
                for muscle in muscle_data}

# Get image data
with open("./json/exercise_images.json") as exercise_images_json:
    exercise_images_data = json.load(exercise_images_json)["results"]

exercise_images_dict = {exercise_image["exercise"]: exercise_image
                        for exercise_image in exercise_images_data}

# Add exercise data to DB
DML.write("-- EXERCISES\n"
          + "INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc, "
          + "primary_muscle, second_muscle, equipment_id, picture_url)\n"
          + "VALUES\n")

with open("./json/exercises.json") as exercises_json:
    exercises_data = json.load(exercises_json)["results"]

for exercise in exercises_data:
    exercise_id = exercise["id"]
    name = exercise["name"]
    description = exercise["description"]

    description = description.replace(
        "'", "''").replace('\n', "").encode("ascii", errors="ignore")
    description = description.decode('utf-8')

    picture = exercise_images_dict.get(exercise_id)
    if picture:
        picture_url = picture["image"]
        picture_url = f"'{picture_url}'"
    else:
        picture_url = "NULL"

    equipments = exercise["equipment"]
    equipment_id = equipments[0] if 0 < len(equipments) else 0

    muscles = exercise["muscles"]
    secondary_muscles = exercise["muscles_secondary"]
    muscles.extend(secondary_muscles)

    primary_muscle = muscles[0] if 0 < len(muscles) else "NULL"
    if primary_muscle != "NULL":
        primary_muscle = f"'{muscles_dict[primary_muscle]}'"

    secondary_muscle = muscles[1] if 1 < len(muscles) else "NULL"
    if secondary_muscle != "NULL":
        secondary_muscle = f"'{muscles_dict[secondary_muscle]}'"

    values = f"\t({exercise_id}, '{name}', '{description}', {primary_muscle}, " \
        + f"{secondary_muscle}, {equipment_id}, {picture_url}),\n" \
        if exercises_data[-1]["id"] != exercise_id \
        else f"\t({exercise_id}, '{name}', '{description}', {primary_muscle}, " \
        + f"{secondary_muscle}, {equipment_id}, {picture_url})\n"

    DML.write(values)

DML.write("ON CONFLICT (exercise_id) DO NOTHING;\n\n")

DML.close()
