# Royal Fitness

A web application built with Flask and PostgreSQL to manage the Royal Fitness Gym.

<img align="right" src=./app/static/logo.png height="150px">

## Project structure

The application source code is available on the `app/` folder, including all the Jinja templates and static assets.

All the infomation related to data is available on the `data/` folder, including the data acquisition (requesting data from the [Wger](https://wger.de/api/v2/) and the [RandomUser](https://randomuser.me/) APIs), and the SQL scripts to set up the database.

## Main features

- Gym members can check their routines and available classes;
- Premium members can enroll to classes;
- Administrators can login to the application;
- Administrators can register members and set up their routines.

## Instructions

The only tools needed to run this container is git, Docker, and docker-compose.

First you need to clone the repository to your machine.

```bash
$ git clone https://github.com/arthurcerveira/Royal-Fitness.git
```

Then you'll need to build and run the containers with docker-compose.

```bash
$ cd Royal-Fitness
$ docker-compose build
$ docker-compose up -d
```

To setup the Postgres DB, you need to run the SQL scripts. This only needs to be done on the first time you build the container.

```bash
$ docker-compose exec db psql --username=royal_fitness --dbname=royal_fitness_dev
psql (13.1)
Type "help" for help.

royal_fitness_dev=$ \i var/lib/postgresql/scripts/DDL.sql
royal_fitness_dev=$ \i var/lib/postgresql/scripts/DML-API.sql
royal_fitness_dev=$ \i var/lib/postgresql/scripts/DML.sql
```

The application is now running at `http://0.0.0.0:5000/` on your browser.

## Acknowledgments

- Logo designed by LogoMaker
- Icons made by [dDara](https://www.flaticon.com/authors/ddara) and FontAwesome
