# Get data from the wger API and convert it to JSON
import json
import os

import requests


TOKEN_KEY = os.environ.get("WGER_TOKEN")
HEADERS = {'Accept': 'application/json',
           'Authorization': f'Token {TOKEN_KEY}'}

URL = "https://wger.de/api/v2/"

ENDPOINTS = {"exercises": URL + "exercise/?language=2",
             "exercise_images":  URL + "exerciseimage/",
             "equipment": URL + "equipment/?language=2",
             "muscle": URL + "muscle/?language=2",
             "category": URL + "exercisecategory/?language=2"}

for endpoint, url in ENDPOINTS.items():
    response = requests.get(url=url, headers=HEADERS)

    with open(f"json/{endpoint}.json", 'w') as json_file:
        json.dump(response.json(), json_file, indent=4)
