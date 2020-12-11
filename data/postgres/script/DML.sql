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
INSERT INTO class (class_name, class_desc, day_of_week,
    positions, schedule, instructor_cpf, picture)
VALUES ('Yoga', 'Yoga combines physical exercises, mental meditation, and breathing techniques to strengthen the muscles and relieve stress.',
     'tuesday', 20, '10:00', '26219538201', 'yoga-class.jpeg')
ON CONFLICT (id) DO NOTHING;

INSERT INTO class (class_name, class_desc, day_of_week,
    positions, schedule, instructor_cpf, picture)
VALUES ('Boxing', 'Boxing is a sport that involves strategically punching an opponent while defending yourself from their return punches.',
     'thursday', 20, '17:30', '11463684822', 'boxing-class.jpeg')
ON CONFLICT (id) DO NOTHING;