# pull official base image
FROM python:3.8.1-slim-buster

# set work directory
WORKDIR /usr/src/app

# install postgres
RUN apt-get update
RUN apt-get install postgresql postgresql-contrib python-psycopg2 libpq-dev python-dev -y
RUN apt-get install gcc -y

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY ./app /usr/src/app/

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

EXPOSE 5000