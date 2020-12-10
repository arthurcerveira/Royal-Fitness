# Create DML file based on JSON data
from pprint import pprint
import json

DML = open("./postgres/script/DML.sql", "w")

# Add equipment data to DB
DML.write("-- EQUIPMENT\n")

with open("./json/equipment.json") as equipment_json:
    equipment_data = json.load(equipment_json)["results"]

for equipment in equipment_data:
    name = equipment["name"]
    equipment_id = equipment["id"]

    query = "INSERT INTO equipment (id, equipment_name)\n" \
        + f"VALUES ({equipment_id}, '{name}')\n" \
        + "ON CONFLICT (id) DO NOTHING;\n\n"

    DML.write(query)

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
DML.write("-- EXERCISES\n")

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
    equipment_id = equipments[0] if 0 < len(equipments) else "NULL"

    muscles = exercise["muscles"]
    secondary_muscles = exercise["muscles_secondary"]
    muscles.extend(secondary_muscles)

    primary_muscle = muscles[0] if 0 < len(muscles) else "NULL"
    if primary_muscle != "NULL":
        primary_muscle = f"'{muscles_dict[primary_muscle]}'"

    secondary_muscle = muscles[1] if 1 < len(muscles) else "NULL"
    if secondary_muscle != "NULL":
        secondary_muscle = f"'{muscles_dict[secondary_muscle]}'"

    query = "INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,\n" \
        + "\tprimary_muscle, second_muscle, equipment_id, picture_url)\n" \
        + f"VALUES ({exercise_id}, '{name}', '{description}', {primary_muscle},\n" \
        + f"\t{secondary_muscle}, {equipment_id}, {picture_url})\n" \
        + "ON CONFLICT (exercise_id) DO NOTHING;\n\n"

    DML.write(query)

DML.close()
