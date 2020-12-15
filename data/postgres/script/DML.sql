-- PERSONAL TRAINER
INSERT INTO trainer (cpf)
VALUES ('90673994988')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO trainer (cpf)
VALUES ('45784953062')
ON CONFLICT (cpf) DO NOTHING;

-- INSRUCTOR
INSERT INTO instructor (cpf)
VALUES ('26219538201')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO instructor (cpf)
VALUES ('11463684822')
ON CONFLICT (cpf) DO NOTHING;

-- ADMIN
INSERT INTO administrator (cpf, admin_password)
VALUES ('83255315533', 'senha123')
ON CONFLICT (cpf) DO NOTHING;

-- MEMBERS
INSERT INTO member (cpf, trainer_cpf, is_premium)
VALUES ('66487723091', '90673994988', FALSE)
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO member (cpf, trainer_cpf, is_premium)
VALUES ('80450893104', '45784953062', FALSE)
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO member (cpf, trainer_cpf, is_premium)
VALUES ('82037012079', '90673994988', FALSE)
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO member (cpf, trainer_cpf, is_premium)
VALUES ('97138857502', '45784953062', TRUE)
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO member (cpf, trainer_cpf, is_premium)
VALUES ('13398564082', '90673994988', TRUE)
ON CONFLICT (cpf) DO NOTHING;

-- CLASSES
INSERT INTO class (id, class_name, class_desc, day_of_week,
    positions, schedule, instructor_cpf, picture)
VALUES (1, 'Yoga', 'Yoga combines physical exercises, mental meditation, and breathing techniques to strengthen the muscles and relieve stress.',
     'tuesday', 20, '10:00', '26219538201', 'yoga-class.jpeg')
ON CONFLICT (id) DO NOTHING;

INSERT INTO class (id, class_name, class_desc, day_of_week,
    positions, schedule, instructor_cpf, picture)
VALUES (2, 'Boxing', 'Boxing is a sport that involves strategically punching an opponent while defending yourself from their return punches.',
     'thursday', 20, '17:30', '11463684822', 'boxing-class.jpeg')
ON CONFLICT (id) DO NOTHING;

-- CLASS SUBSCRIPTIONS
INSERT INTO member_subscription (class_id, member_cpf)
VALUES (1, '97138857502')
ON CONFLICT (class_id, member_cpf) DO NOTHING;

INSERT INTO member_subscription (class_id, member_cpf)
VALUES (2, '97138857502')
ON CONFLICT (class_id, member_cpf) DO NOTHING;

INSERT INTO member_subscription (class_id, member_cpf)
VALUES (1, '13398564082')
ON CONFLICT (class_id, member_cpf) DO NOTHING;

-- MEMBER ROUTINES
INSERT INTO routine (member_cpf, is_standard)
VALUES ('66487723091', FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (1, 'monday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'monday', 161, 5, 5, 80)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'monday', 181, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'monday', 86, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (1, 'wednesday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'wednesday', 97, 5, 5, 70)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'wednesday', 119, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'wednesday', 82, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (1, 'friday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'friday', 191, 5, 5, 90)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'friday', 177, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (1, 'friday', 130, 3, 12, 120)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- ROUTINE 2
INSERT INTO routine (member_cpf, is_standard)
VALUES ('80450893104', FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (2, 'tuesday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (2, 'tuesday', 293, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (2, 'tuesday', 269, 30, 8)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (2, 'thursday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (2, 'thursday', 806, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (2, 'thursday', 397, 30, 7)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- ROUTINE 3
INSERT INTO routine (member_cpf, is_standard)
VALUES ('82037012079', FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (3, 'tuesday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (3, 'tuesday', 293, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (3, 'tuesday', 269, 30, 8)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (3, 'thursday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (3, 'thursday', 806, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (3, 'thursday', 397, 30, 7)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- ROUTINE 4
INSERT INTO routine (member_cpf, is_standard)
VALUES ('97138857502', FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (4, 'monday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'monday', 161, 5, 5, 80)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'monday', 181, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'monday', 86, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (4, 'wednesday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'wednesday', 97, 5, 5, 70)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'wednesday', 119, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'wednesday', 82, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (4, 'friday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'friday', 191, 5, 5, 90)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'friday', 177, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (4, 'friday', 130, 3, 12, 120)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- ROUTINE 5
INSERT INTO routine (member_cpf, is_standard)
VALUES ('13398564082', FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (5, 'tuesday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (5, 'tuesday', 293, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (5, 'tuesday', 269, 30, 8)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (5, 'thursday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (5, 'thursday', 806, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (5, 'thursday', 397, 30, 7)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- STANDARD ROUTINES
-- ROUTINE 6
INSERT INTO routine (member_cpf, is_standard, routine_name)
VALUES (NULL, TRUE, 'Starting Strenght')
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (6, 'monday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'monday', 161, 5, 5, 80)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'monday', 181, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'monday', 86, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (6, 'wednesday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'wednesday', 97, 5, 5, 70)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'wednesday', 119, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'wednesday', 82, 3, 12, 10)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (6, 'friday', 45)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'friday', 191, 5, 5, 90)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'friday', 177, 3, 12, 40)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO strenght_exercise (routine_id, day_of_week, exercise_id,
    exercise_sets, repetition, exercise_weight)
VALUES (6, 'friday', 130, 3, 12, 120)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

-- ROUTINE 7 
INSERT INTO routine (member_cpf, is_standard, routine_name)
VALUES (NULL, TRUE, 'Conditioning Training')
ON CONFLICT (id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (7, 'tuesday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (7, 'tuesday', 293, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (7, 'tuesday', 269, 30, 8)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO workout (routine_id, day_of_week, duration)
VALUES (7, 'thursday', 60)
ON CONFLICT (routine_id, day_of_week) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (7, 'thursday', 806, 30, 5)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;

INSERT INTO cardio_exercise (routine_id, day_of_week, exercise_id,
    duration, intensity)
VALUES (7, 'thursday', 397, 30, 7)
ON CONFLICT (routine_id, day_of_week, exercise_id) DO NOTHING;
