# Get data from the APIs and convert it to JSON
import json
import os
from random import randint

import requests

# WGER API
TOKEN_KEY = os.environ.get("WGER_TOKEN")
HEADERS = {'Accept': 'application/json',
           'Authorization': f'Token {TOKEN_KEY}'}

URL = "https://wger.de/api/v2/"

ENDPOINTS = {"exercises": URL + "exercise/?language=2&limit=500",
             "exercise_images":  URL + "exerciseimage/?limit=500",
             "equipment": URL + "equipment/?language=2",
             "muscle": URL + "muscle/?language=2",
             "category": URL + "exercisecategory/?language=2"}

for endpoint, url in ENDPOINTS.items():
    response = requests.get(url=url, headers=HEADERS)

    with open(f"json/{endpoint}.json", 'w') as json_file:
        json.dump(response.json(), json_file, indent=4)


# RANDOM USER API
URL = 'https://randomuser.me/api/?results=10'

HEADERS = {'Accept': 'application/json'}

response = requests.get(url=URL, headers=HEADERS)
people_data = response.json()['results']

people = [{
    'cpf': str(randint(10000000000, 99999999999)),
    'name': f"{person['name']['first']} {person['name']['last']}",
    'date_of_birth': person['dob']['date'][:10].replace('-', '/'),
    'phone_number': person['cell'],
    'picture_url': person['picture']['large']
} for person in people_data]

people_dict = {"results": people}

with open(f"json/people.json", 'w') as json_file:
    json.dump(people_dict, json_file, indent=4)
