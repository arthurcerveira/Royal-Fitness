CREATE SCHEMA IF NOT EXISTS royal_fitness_schema AUTHORIZATION royal_fitness;
SET search_path TO royal_fitness_schema;
SET client_min_messages TO WARNING;

-- DOMAINS
CREATE DOMAIN cpf VARCHAR(11) NOT NULL;
CREATE DOMAIN day_of_week VARCHAR(11) 
    CHECK (VALUE IN ('sunday', 'monday', 'tuesday', 'wednesday', 
                     'thursday', 'friday', 'saturday'));
CREATE DOMAIN class_positions INT CHECK (VALUE <= 50);

-- PEOPLE
CREATE TABLE IF NOT EXISTS person (
    cpf             cpf,
    person_name     VARCHAR(40) NOT NULL,    
    date_of_birth   DATE,
    phone_number    VARCHAR(20),
    picture_url     VARCHAR(500),
PRIMARY KEY (cpf));

CREATE TABLE IF NOT EXISTS trainer (
    cpf             cpf,
PRIMARY KEY (cpf),
FOREIGN KEY (cpf) REFERENCES person(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS instructor (
    cpf             cpf,
PRIMARY KEY (cpf),
FOREIGN KEY (cpf) REFERENCES person(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS administrator (
    cpf             cpf,
    admin_password  VARCHAR(32),
PRIMARY KEY (cpf),
FOREIGN KEY (cpf) REFERENCES person(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS member (
    cpf             cpf,
    trainer_cpf     cpf,
    is_premium      BOOLEAN,
PRIMARY KEY (cpf),
FOREIGN KEY (cpf) REFERENCES person(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (trainer_cpf) REFERENCES trainer(cpf)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);

-- CLASSES
CREATE TABLE IF NOT EXISTS class (
    id              SERIAL UNIQUE NOT NULL,
    class_name      VARCHAR(30) NOT NULL,
    class_desc      VARCHAR(500),
    day_of_week     day_of_week,
    positions       class_positions NOT NULL,
    schedule        VARCHAR(5) NOT NULL,
    picture         VARCHAR(200),
    instructor_cpf  cpf,
PRIMARY KEY (id),
FOREIGN KEY (instructor_cpf) REFERENCES instructor(cpf)
    ON DELETE SET NULL
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS member_subscription (
    class_id        SERIAL UNIQUE NOT NULL,
    member_cpf      cpf,
PRIMARY KEY (class_id, member_cpf),
FOREIGN KEY (class_id) REFERENCES class(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (member_cpf) REFERENCES member(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- DATA & ROUTINES
CREATE TABLE IF NOT EXISTS routine (
    id              SERIAL UNIQUE NOT NULL,
    is_standard     BOOLEAN NOT NULL,
    member_cpf      cpf DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (member_cpf) REFERENCES member(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS equipment (
    id              INT UNIQUE NOT NULL,
    equipment_name  VARCHAR(30) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE IF NOT EXISTS exercise_info (
    exercise_id     SERIAL UNIQUE NOT NULL,
    exercise_name   VARCHAR(100) NOT NULL,
    exercise_desc   VARCHAR(5000),
    primary_muscle  VARCHAR(50), 
    second_muscle   VARCHAR(50),
    equipment_id    INT DEFAULT NULL,
    picture_url     VARCHAR(200),
PRIMARY KEY (exercise_id),
FOREIGN KEY (equipment_id) REFERENCES equipment(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS workout (
    routine_id      SERIAL UNIQUE NOT NULL,
    day_of_week     day_of_week NOT NULL,
    duration        INT,
PRIMARY KEY (routine_id, day_of_week),
FOREIGN KEY (routine_id) REFERENCES routine(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS cardio_exercise (
    routine_id      SERIAL UNIQUE NOT NULL,
    exercise_id     SERIAL UNIQUE NOT NULL,
    day_of_week     day_of_week NOT NULL,
    duration        INT,
    intensity       INT,
PRIMARY KEY (routine_id, day_of_week, exercise_id),
FOREIGN KEY (routine_id, day_of_week) REFERENCES workout(routine_id, day_of_week)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (exercise_id) REFERENCES exercise_info(exercise_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS strenght_exercise (
    routine_id      SERIAL UNIQUE NOT NULL,
    exercise_id     SERIAL UNIQUE NOT NULL,
    day_of_week     day_of_week NOT NULL,
    exercise_sets   INT,
    repetition      INT,
    exercise_weight FLOAT,
PRIMARY KEY (routine_id, day_of_week, exercise_id),
FOREIGN KEY (routine_id, day_of_week) REFERENCES workout(routine_id, day_of_week)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (exercise_id) REFERENCES exercise_info(exercise_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);