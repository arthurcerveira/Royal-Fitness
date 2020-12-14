-- PEOPLE
INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('90673994988', 'Sophie Bishop', TO_DATE('1997/11/21', 'YYYY/MM/DD'), '0754-620-190', 'https://randomuser.me/api/portraits/women/36.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('45784953062', 'Anne Chevalier', TO_DATE('1992/10/02', 'YYYY/MM/DD'), '079 808 88 40', 'https://randomuser.me/api/portraits/women/63.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('26219538201', 'Lyam Caron', TO_DATE('1950/10/09', 'YYYY/MM/DD'), '06-67-29-55-54', 'https://randomuser.me/api/portraits/men/49.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('11463684822', 'Julia Harcourt', TO_DATE('1961/01/26', 'YYYY/MM/DD'), '0935-739-5329', 'https://randomuser.me/api/portraits/women/82.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('83255315533', 'Elliot Harcourt', TO_DATE('1946/08/04', 'YYYY/MM/DD'), '129-267-9591', 'https://randomuser.me/api/portraits/men/72.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('66487723091', 'Silas Jurgensen', TO_DATE('1958/01/17', 'YYYY/MM/DD'), '39856716', 'https://randomuser.me/api/portraits/men/78.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('80450893104', 'Jorge Gomez', TO_DATE('1985/11/06', 'YYYY/MM/DD'), '(358)-447-2950', 'https://randomuser.me/api/portraits/men/61.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('82037012079', 'Angie Reyes', TO_DATE('1960/02/02', 'YYYY/MM/DD'), '081-052-8511', 'https://randomuser.me/api/portraits/women/16.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('97138857502', 'Aubrey Harris', TO_DATE('1950/09/02', 'YYYY/MM/DD'), '195-217-8562', 'https://randomuser.me/api/portraits/women/48.jpg')
ON CONFLICT (cpf) DO NOTHING;

INSERT INTO person (cpf, person_name, date_of_birth, phone_number, picture_url)
VALUES ('13398564082', 'Melani Rodrigues', TO_DATE('1945/07/04', 'YYYY/MM/DD'), '(59) 0568-7086', 'https://randomuser.me/api/portraits/women/90.jpg')
ON CONFLICT (cpf) DO NOTHING;

-- EQUIPMENT
INSERT INTO equipment (id, equipment_name)
VALUES (1, 'Barbell')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (8, 'Bench')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (3, 'Dumbbell')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (4, 'Gym mat')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (9, 'Incline bench')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (10, 'Kettlebell')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (7, 'Bodyweight exercise')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (6, 'Pull-up bar')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (5, 'Swiss Ball')
ON CONFLICT (id) DO NOTHING;

INSERT INTO equipment (id, equipment_name)
VALUES (2, 'SZ-Bar')
ON CONFLICT (id) DO NOTHING;

-- EXERCISES
INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (345, '2 Handed Kettlebell Swing', '<p>Two Handed Russian Style Kettlebell swing</p>', NULL,
	NULL, 10, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (227, 'Arnold Shoulder Press', '<p>Very common shoulder exercise.</p><p></p><p>As shown here:https://www.youtube.com/watch?v=vj2w851ZHRM</p>', NULL,
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (289, 'Axe Hold', '<p>Grab dumbbells and extend arms to side and hold as long as you can</p>', 'Anterior deltoid',
	'Trapezius', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (637, 'Back Squat', 'Place a barbell in a rack just below shoulder-height. Dip under the bar to put it behind the neck across the top of the back, and grip the bar with the hands wider than shoulder-width apart. Lift the chest up and squeeze the shoulder blades together to keep the straight back throughout the entire movement. Stand up to bring the bar off the rack and step backwards, then place the feet so that they are a little wider than shoulder-width apart. Sit back into hips and keep the back straight and the chest up, squatting down so the hips are below the knees. From the bottom of the squat, press feet into the ground and push hips forward to return to the top of the standing position.', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (343, 'Barbell Ab Rollout', '<p>Place a barbell on the floor at your feet.</p><p>Bending at the waist, grip the barbell with a shoulder with overhand grip.</p><p>With a slow controlled motion, roll the bar out so that your back is straight.</p><p>Roll back up raising your hips and butt as you return to the starting position.</p>', 'Obliquus externus abdominis',
	'Rectus abdominis', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (407, 'Barbell Hack Squats', '<p>Perform leg squats with barbell behind your legs</p>', 'Quadriceps femoris',
	'Gluteus maximus', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (405, 'Barbell Lunges', '<p>Put barbell on the back of your shoulders. Stand upright, then take the first step forward. Step should bring you forward so that your supporting legs knee can touch the floor. Then stand back up and repeat with the other leg.</p><p>Remember to keep good posture.</p>', 'Quadriceps femoris',
	'Gluteus maximus', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (344, 'Barbell Triceps Extension', '<p>Position barbell overhead with narrow overhand grip.</p><p>Lower forearm behind upper arm with elbows remaining overhead. Extend forearm overhead. Lower and repeat.</p>', 'Triceps brachii',
	'Anterior deltoid', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (307, 'Bear Walk', '<p>-Rest your weight on your palms and the balls of your feet, not dissimilar to normal pushup position</p><p>-Move by stepping with your R palm and L foot, then your L palm and R foot. Basically, walk like a lumbering bear.</p><p>-Move as fast as you can. Measure your reps/sets in either distance (i.e. 40 yards) or time (i.e. 45 seconds)</p><p>-Works your Pecs, Deltoids, Triceps, Traps, Lats, Abs and Lower Back, Hip Flexors, Quads, Glutes and Calves</p>', 'Anterior deltoid',
	'Gastrocnemius', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (388, 'Bear Walk', '<p>-Rest your weight on your palms and the balls of your feet, not dissimilar to normal pushup position</p><p>-Move by stepping with your R palm and L foot, then your L palm and R foot.  Basically, walk like a lumbering bear.</p><p>-Move as fast as you can.  Measure your reps/sets in either distance (i.e. 40 yards) or time (i.e. 45 seconds)</p><p>-Works your Pecs, Deltoids, Triceps, Traps, Lats, Abs and Lower Back, Hip Flexors, Quads, Glutes and Calves</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (192, 'Bench Press', '<p>Lay down on a bench, the bar should be directly above your eyes, the knees are somewhat angled and the feet are firmly on the floor. Concentrate, breath deeply and grab the bar more than shoulder wide. Bring it slowly down till it briefly touches your chest at the height of your nipples. Push the bar up.</p><p>If you train with a high weight it is advisable to have a <em>spotter</em> that can help you up if you can''t lift the weight on your own.</p><p>With the width of the grip you can also control which part of the chest is trained more:</p><ul><li>wide grip: outer chest muscles</li><li>narrow grip: inner chest muscles and triceps</li></ul>', 'Pectoralis major',
	'Anterior deltoid', 1, 'https://wger.de/media/exercise-images/192/Bench-press-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (97, 'Benchpress Dumbbells', '<p>The movement is very similar to benchpressing with a barbell, however, the weight is brought down to the chest at a lower point.</p><p>Hold two dumbbells and lay down on a bench. Hold the weights next to the chest, at the height of your nipples and press them up till the arms are stretched. Let the weight slowly and controlled down.</p>', 'Pectoralis major',
	'Anterior deltoid', 8, 'https://wger.de/media/exercise-images/97/Dumbbell-bench-press-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (88, 'Bench Press Narrow Grip', '<p>Lay down on a bench, the bar is directly over your eyes, the knees form a slight angle and the feet are firmly on the ground. Hold the bar with a narrow grip (around 20cm.). Lead the weight slowly down till the arms are parallel to the floor (elbow: right angle), press then the bar up. When bringing the bar down, don''t let it down on your nipples as with the regular bench pressing, but somewhat lower.</p>', 'Triceps brachii',
	'Anterior deltoid', 1, 'https://wger.de/media/exercise-images/88/Narrow-grip-bench-press-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (268, 'Bent High Pulls', '<p>Bend over slightly while holding two dumbbells. Pull the dumbbells up to your chest, keeping your elbows as high as you can.</p>', 'Trapezius',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (412, 'Bent Over Barbell Row', '<ol><li>Holding a barbell with a pronated grip (palms facing down), bend your knees slightly and bring your torso forward, by bending at the waist, while keeping the back straight until it is almost parallel to the floor. Tip: Make sure that you keep the head up. The barbell should hang directly in front of you as your arms hang perpendicular to the floor and your torso. This is your starting position.</li><li>Now, while keeping the torso stationary, breathe out and lift the barbell to you. Keep the elbows close to the body and only use the forearms to hold the weight. At the top contracted position, squeeze the back muscles and hold for a brief pause.</li><li>Then inhale and slowly lower the barbell back to the starting position.</li><li>Repeat for the recommended amount of repetitions.</li></ol>', NULL,
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (362, 'Bentover Dumbbell Rows', '<p>With dumbbells in hand, bend at the hip until hands hang just below the knees (similar to straight-legged-deadlift starting position). Keep upper body angle constant while contracting your lats to pull you ellbows back pinching the shoulder blades at the top. Try not to stand up with every rep, check hands go below knees on every rep.</p>', 'Latissimus dorsi',
	'Biceps brachii', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (421, 'Bent-over Lateral Raises', '<p>Sit on bench while holding weights. Bend forward as far as possible, with arms slightly bent at the elbow. Perform a lateral raise while maintaining the bend in your elbow.</p>', NULL,
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (109, 'Bent Over Rowing', '<p>Grab the barbell with a wide grip (slightly more than shoulder wide) and lean forward. Your upper body is not quite parallel to the floor, but forms a slight angle. The chest''s out during the whole exercise.</p><p>Pull now the barbell with a fast movement towards your belly button, not further up. Go slowly down to the initial position. Don''t swing with your body and keep your arms next to your body.</p>', 'Latissimus dorsi',
	'Anterior deltoid', 1, 'https://wger.de/media/exercise-images/109/Barbell-rear-delt-row-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (110, 'Bent Over Rowing Reverse', '<p>The same as <em>regular</em> rowing, but holding a reversed grip (your palms pointing forwards):</p><p>Grab the barbell with a wide grIp (slightly more than shoulder wide) and lean forward. Your upper body is not quite parallel to the floor, but forms a slight angle. The chest''s out during the whole exercise.</p><p>Pull now the barbell with a fast movement towards your belly button, not further up. Go slowly down to the initial position. Don''t swing with your body and keep your arms next to your body.</p>', 'Latissimus dorsi',
	'Anterior deltoid', 1, 'https://wger.de/media/exercise-images/110/Reverse-grip-bent-over-rows-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (74, 'Biceps Curls With Barbell', '<p>Hold the Barbell shoulder-wide, the back is straight, the shoulders slightly back, the arms are streched. Bend the arms, bringing the weight up, with a fast movement. Without pausing, let down the bar with a slow and controlled movement.</p><p>Don''t allow your body to swing during the exercise, all work is done by the biceps, which are the only mucles that should move (pay attention to the elbows).</p>', 'Biceps brachii',
	'Brachialis', 1, 'https://wger.de/media/exercise-images/74/Bicep-curls-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (81, 'Biceps Curls With Dumbbell', '<p>Hold two barbells, the arms are streched, the hands are on your side, the palms face inwards. Bend the arms and bring the weight with a fast movement up. At the same time, rotate your arms by 90 degrees at the very beginning of the movement. At the highest point, rotate a little the weights further outwards. Without a pause, bring them down, slowly.</p><p>Don''t allow your body to swing during the exercise, all work is done by the biceps, which are the only mucles that should move (pay attention to the elbows).</p>', 'Biceps brachii',
	'Brachialis', 3, 'https://wger.de/media/exercise-images/81/Biceps-curl-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (80, 'Biceps Curls With SZ-bar', '<p>Hold the SZ-bar shoulder-wide, the back is straight, the shoulders slightly back, the arms are streched. Bend the arms, bringing the weight up, with a fast movement. Without pausing, let down the bar with a slow and controlled movement.</p><p>Don''t allow your body to swing during the exercise, all work is done by the biceps, which are the only mucles that should move (pay attention to the elbows).</p>', 'Biceps brachii',
	'Brachialis', 2, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (129, 'Biceps Curl With Cable', '<p>Stand around 30 - 40cm away from the cable, the feet are firmly on the floor. Take the bar and lift the weight with a fast movements. Lower the weight as with the dumbbell curls slowly and controlled.</p>', 'Biceps brachii',
	NULL, NULL, 'https://wger.de/media/exercise-images/129/Standing-biceps-curl-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (341, 'Body-Ups', '<ol><li>Assume a plank position on the ground. You should be supporting your bodyweight on your toes and forearms, keeping your torso straight. Your forearms should be shoulder-width apart. This will be your starting position.</li><li>Pressing your palms firmly into the ground, extend through the elbows to raise your body from the ground. Keep your torso rigid as you perform the movement.</li><li>Slowly lower your forearms back to the ground by allowing the elbows to flex.</li><li>Repeat as needed.</li></ol>', 'Triceps brachii',
	NULL, 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (342, 'Braced Squat', '<p>Stand with feet slightly wider than shoulder-width apart, while standing as tall as you can.</p><p>Grab a weight plate and hold it out in front of your body with arms straight out. Keep your core tight and stand with a natural arch in your back.</p><p>Now, push hips back and bend knees down into a squat as far as you can. Hold for a few moments and bring yourself back up to the starting position.</p>', 'Quadriceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (346, 'Bulgarian Split Squat', '<p>Rest back foot on an elevated surface with sole pointing up. keep your weight over your front leg as you lower yourself</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (354, 'Burpees', '<p>Jump, lay down on your chest, do a pushup then jump, repeat</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (98, 'Butterfly', '<p>Sit on the butterfly machine, the feet have a good contact with the floor, the upper arms are parallel to the floor. Press your arms together till the handles are practically together (but aren''t!). Go slowly back. The weights should stay all the time in the air.</p>', 'Pectoralis major',
	'Anterior deltoid', NULL, 'https://wger.de/media/exercise-images/98/Butterfly-machine-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (99, 'Butterfly Narrow Grip', '<p>The movement is the same as with a regular butterfly, only that the grip is narrow:</p><p>Sit on the butterfly machine, the feet have a good contact with the floor, the upper arms are parallel to the floor. Press your arms together till the handles are practically together (but aren''t!). Go slowly back. The weights should stay all the time in the air.</p>', 'Pectoralis major',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (124, 'Butterfly Reverse', '', 'Anterior deltoid',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (207, 'Cable Cross-over', '<p>Begin with cables at about shoulder height, one in each hand. Take a step forward so that one foot is in front of the other, for stability, and so that there is tension on the cables. Bring hands together in front of you. Try to make your hands overlap (so that the cables cross) a few inches.</p>', 'Pectoralis major',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (265, 'Cable External Rotation', '<p>Steps:</p><ol><li>Start off placing an extension band around a post or in a secure position where it will not release and is at elbow level.</li><li>Position yourself to the side of the band and with your hand that is opposite of the band, reach out and grab the handle.</li><li>Bring the band to your chest keeping your elbow bent in a 90 degree angle then slowly rotate your arm in a backhand motion so that the band externally rotates out</li><li>Continue out as far as possible so that you feel a stretch in your shoulders, hold for a count and then return back to the starting position.</li><li>Repeat for as many reps and sets as desired.</li></ol>', 'Anterior deltoid',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (167, 'Cable Woodchoppers', '<p>Set cable pulley slightly lower than chest height. Keep body facing forward with hips stable. Grab the pulley handle, fully extend your arms and bring your arms forward and across your body. Hold for 1 second at the end of the movement and slowly return to starting position.</p>', 'Obliquus externus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (308, 'Calf Press Using Leg Press Machine', '<p>Put the balls of your feet on an extended leg press pad. Use your calves to press the weight by flexing your feet/toes into a pointed position, and releasing back into a relaxed position.</p><p>This exercise builds mass and strength in the Gastrocnemius and Soleus muscles as well, if not better, than any calf exercise.</p>', 'Gastrocnemius',
	'Soleus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (776, 'Calf Raises', 'Calf raises are a method of exercising the gastrocnemius, tibialis posterior and soleus muscles of the lower leg. The movement performed is plantar flexion, a.k.a. ankle extension.', 'Gastrocnemius',
	'Soleus', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (104, 'Calf Raises on Hackenschmitt Machine', '<p>Place yourself on the machine with your back firmly against the backrest, the feet are on the platform for calf raises. Check that the feet are half free and that you can completely stretch the calf muscles down.</p><p>With straight knees pull up your weight as much as you can. Go with a fluid movement down till the calves are completely stretched. Repeat.</p>', 'Gastrocnemius',
	'Soleus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (803, 'Chin Up', 'The chin-up (also known as a chin or chinup) is a strength training exercise. People frequently do this exercise with the intention of strengthening muscles such as the latissimus dorsi and biceps, which extend the shoulder and flex the elbow, respectively. In this maneuver, the palms are faced towards the body. It is a form of pull-up in which the range of motion is established in relation to a person''s chin.', 'Biceps brachii',
	'Latissimus dorsi', 6, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (181, 'Chin-ups', '<p>Like pull-ups but with a reverse grip</p>', 'Biceps brachii',
	'Latissimus dorsi', 6, 'https://wger.de/media/exercise-images/181/Chin-ups-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (217, 'Close-grip Bench Press', '<p>Perform a typical bench press, but hold the bar with your hands approximately shoulder-width apart and keep your elbows close to your body.</p>', 'Triceps brachii',
	'Pectoralis major', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (213, 'Close-grip Lat Pull Down', '<p>Grip the pull-down bar with your hands closer than shoulder width apart, with your palms facing away from you. Lean back slightly. Pull the bar down towards your chest, keeping your elbows close to your sides as you come down. Pull your shoulders back at the end of the motion.</p>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (194, 'Cross-Bench Dumbbell Pullovers', '<p>Grasp a moderately weighted dumbbell so your palms are flat against the underside of the top plates and your thumbs are around the bar. Lie on your back across a flat bench so only your upper back and shoulders are in contact with the bench. Your feet should be set about shoulder-width apart and your head should hang slightly downward. With the dumbbell supported at arm''s length directly about your chest, bend your arms about 15 degrees and keep them bent throughout the movement. Slowly lower the dumbbell backward and downward in a semicircle arc to as low a position as is comfortably possible. Raise it slowly back along the same arc to the starting point, and repeat for the required number of repetitions.</p>', 'Latissimus dorsi',
	'Pectoralis major', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (91, 'Crunches', '<p>Lay down on your back a soft surface, the feet are on the floor. Ask a partner or use some other help (barbell, etc.) to keep them fixed, your hands are behind your head. From this position move your upper body up till your head or elbows touch your knees. Do this movement by rolling up your back.</p>', 'Rectus abdominis',
	'Serratus anterior', 8, 'https://wger.de/media/exercise-images/91/Crunches-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (94, 'Crunches on Machine', '<p>The procedure is very similar as for regular crunches, only with the additional weight of the machine. Sit on the machine, put both feet firmly on the ground. Grab the to the weights, cables, etc. and do a rolling motion forwards (the spine should ideally lose touch vertebra by vertebra). Slowly return to the starting position. </p>', 'Rectus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (92, 'Crunches With Cable', '<p>Take the cable on your hands and hold it next to your temples. Knee down and hold your upper body straight and bend forward. Go down with a fast movement, rolling your back in (your ellbows point to your knees). Once down, go slowly back to the initial position.</p>', 'Rectus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (416, 'Crunches With Legs Up', '<p>On your back, legs extended straight up, reach toward your toes with your hands and lift your shoulder blades off the ground and back.</p>', 'Rectus abdominis',
	'Obliquus externus abdominis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (619, 'Curl su Panca a 45°', '<p>Bicipiti su panca a 45. Il movimento deve essere completo</p>', 'Biceps brachii',
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (806, 'Cycling', 'Cycling, also called bicycling or biking, is the use of bicycles for transport, recreation, exercise or sport. People engaged in cycling are referred to as cyclists, bicyclists, or bikers. Apart from two-wheeled bicycles, cycling also includes the riding of unicycles, tricycles, quadracycles, recumbent and similar human-powered vehicles.', 'Obliquus externus abdominis',
	'Trapezius', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (544, 'Deadbug', 'Lie on your back, with your hips and knees bent to 90. Raise both arms toward the ceiling. Pull your lower back to the floor to eliminate the gap. Start by pressing one leg out, and tapping the heel to the floor. "As you extend one leg, exhale as much as you can, keeping your lower back glued to the floor," Dunham says. When you cant exhale any more, pull your knee back to the starting position. Make this more difficult by holding weight in your hands, or by lowering opposite arm and leg.', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (347, 'Deadhang', '<p>Deadhang performed on an edgeeither with or without added weight (adujst edge or weight to adjust difficulty)</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (105, 'Deadlifts', '<p>Stand firmly, with your feet slightly more than shoulder wide apart. Stand directly behind the bar where it should barely touch your shin, your feet pointing a bit out. Bend down with a straight back, the knees also pointing somewhat out. Grab the bar with a shoulder wide grip, one underhand, one reverse grip.</p><p>Pull the weight up. At the highest point make a slight hollow back and pull the bar back. Hold 1 or 2 seconds that position. Go down, making sure the back is not bent. Once down you can either go back again as soon as the weights touch the floor, or make a pause, depending on the weight.</p>', 'Latissimus dorsi',
	'Quadriceps femoris', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (100, 'Decline Bench Press Barbell', '<p>Lay down on a decline bench, the bar should be directly above your eyes, the knees are somewhat angled and the feet are firmly on the floor. Concentrate, breath deeply and grab the bar more than shoulder wide. Bring it slowly down till it briefly touches your chest at the height of your nipples. Push the bar up.</p>', 'Pectoralis major',
	NULL, 1, 'https://wger.de/media/exercise-images/100/Decline-bench-press-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (101, 'Decline Bench Press Dumbbell', '<p>Take two dumbbells and sit on a decline bench, the feet are firmly on the floor, the head is resting the bench. Hold the weights next to the chest, at the height of your nipples and press them up till the arms are stretched. Let the weight slowly and controlled down.</p>', 'Pectoralis major',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (260, 'Decline Pushups', '<p>With your feet raised approximately 30cm on a platform, align your shoulders, elbows and hands, then perform regular pushups. This emphasises the clavicular fibers of the pectoralis major.</p>', 'Pectoralis major',
	'Anterior deltoid', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (381, 'Deficit Deadlift', '<p>Preparation</p><p>Stand on weight plate, bumper plate, or shallow elevated platform with loaded bar above feet. Squat down and grasp bar with shoulder width or slightly wider overhand or mixed grip.</p><p></p><p>Execution</p><p>Lift bar by extending hips and knees to full extension. Pull shoulders back at top of lift if rounded. Return weights to floor by bending hips back while allowing knees to bend forward, keeping back straight and knees pointed same direction as feet. Repeat.</p><p></p><p>Comments</p><p>Throughout lift, keep hips low, shoulders high, arms and back straight. Knees should point same direction as feet throughout movement. Keep bar close to body to improve mechanical leverage. Grip strength and strength endurance often limit ability to perform multiple reps at heavy resistances. Gym chalk, wrist straps, grip work, and mixed grip can be used to enhance grip. Mixed grip indicates one hand holding with overhand grip and other hand holding with underhand grip. Lever barbell jack can be used to lift barbell from floor for easier loading and unloading of weight plates.</p><p>Barbell Deficit Deadlift emphasizes building strength through lowest portion of Deadlift. Target muscle is exercised isometrically. Heavy barbell deadlifts significantly engages Latissmus Dorsi. See Barbell Deficit Deadlift under Gluteus Maximus. Also see Deadlift Analysis.</p>', 'Biceps femoris',
	'Gluteus maximus', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (329, 'Diagonal Shoulder Press', '<p>You sit at the bench press device, back slightly tilted to the back. The bar should be about 20 cm in front of you. Then you push the bar and take it back again, as you would with a bench press.</p><p>In this position you strain your chest muscles a lot less, which is nice if you want to train, but your chest hasn''t recovered yet.</p><p>Here''s a link to a girl on a machine specialized for this exercise, to give a better description than my failing words above.</p><p>http://www.schnell-online.de/db_imgs/products/img/t-80400.jpg</p>', NULL,
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (82, 'Dips', '<p>Hold onto the bars at a narrow place (if they are not parallel) and press yourself up, but don''t stretch the arms completely, so the muscles stay during the whole exercise under tension. Now bend the arms and go down as much as you can, keeping the elbows always pointing back, At this point, you can make a short pause before repeating the movement.</p>', 'Triceps brachii',
	'Pectoralis major', NULL, 'https://wger.de/media/exercise-images/82/Tricep-dips-2-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (781, 'Dips', 'A dip is an upper-body strength exercise. Narrow, shoulder-width dips primarily train the triceps, with major synergists being the anterior deltoid, the pectoralis muscles (sternal, clavicular, and minor), and the rhomboid muscles of the back (in that order).[1] Wide arm training places additional emphasis on the pectoral muscles, similar in respect to the way a wide grip bench press would focus more on the pectorals and less on the triceps.', 'Pectoralis major',
	'Triceps brachii', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (83, 'Dips Between Two Benches', '<p>Put two benches so far appart, that you can hold onto one with your hands and are just able to reach the other with your feet. The legs stay during the exercise completely stretched. With your elbows facing back, bend them as much as you can. Push yourself up, but don''t stretch out the arms.</p>', 'Triceps brachii',
	NULL, 8, 'https://wger.de/media/exercise-images/83/Bench-dips-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (275, 'Dumbbell Concentration Curl', '<p>Sit on bench. Grasp dumbbell between feet. Place back of upper arm to inner thigh. Lean into leg to raise elbow slightly.</p>', 'Brachialis',
	'Biceps brachii', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (300, 'Dumbbell Goblet Squat', '<p>Grasp dumbbell with both hands at the sides of the upper plates. Hold dumbbell in front of chest, close to torso. Place feet about shoulderwide apart, keep knees slightly bent.</p><p>Squat down until thighs are parallel to floor. Keep back straight, bend and move hips backward to keep knees above feet. Return, keep knees slightly flexed. Repeat.</p><p>Keep bodyweight on heels and look ahead or slightly above to keep back straight.</p>', 'Quadriceps femoris',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (298, 'Dumbbell Incline Curl', '<p>With elbows back to sides, raise one dumbbell and rotate forearm until forearm is vertical and palm faces shoulder. Lower to original position and repeat with opposite arm. Continue to alternate between sides.</p>', 'Biceps brachii',
	'Brachialis', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (112, 'Dumbbell Lunges Standing', '<p>.</p>', 'Quadriceps femoris',
	'Gluteus maximus', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (113, 'Dumbbell Lunges Walking', '<p>Take two dumbbells in your hands, stand straight, feet about shoulder wide. Take one long step so that the front knee is approximately forming a right angle. The back leg is streched, the knee is low but doesn''t touch the ground. "Complete" the step by standing up and repeat the movement with the other leg.</p>', 'Quadriceps femoris',
	'Gluteus maximus', 3, 'https://wger.de/media/exercise-images/113/Walking-lunges-4.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (87, 'Dumbbells on Scott Machine', '', 'Biceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (274, 'Dumbbell Triceps Extension', '<p>Position one dumbbell over head with both hands under inner plate (heart shaped grip).</p><p>With elbows over head, lower forearm behind upper arm by flexing elbows. Flex wrists at bottom to avoid hitting dumbbell on back of neck. Raise dumbbell over head by extending elbows while hyperextending wrists. Return and repeat.</p>', 'Triceps brachii',
	'Anterior deltoid', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (414, 'Extenseurs - Face', '<p>En face</p><ol><li>Tirer</li><li>relacher doucement</li></ol>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (394, 'Facepull', '<p>Attach a rope to a pulley station set at about chest level.</p><p>Step back so you''re supporting the weight with arms completely outstretched and assume a staggered (one foot forward) stance. Bend the knees slightly for a stable base.</p><p>Retract the scapulae (squeeze your partner''s finger with your shoulder blades) and pull the center of the rope slightly up towards the face. A good cue is to think about pulling the ends of the rope apart, not just pulling back.</p><p>As you near your face, externally rotate so your knuckles are facing the ceiling.</p><p>Hold for one second at the top position and slowly lower.</p>', 'Trapezius',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (303, 'Flutter Kicks', '<p>-Laying on the back, lift your straightened legs from the ground at a 45 degree angle.</p><p>-As your Left foot travels downward and nearly touches the floor, your Right foot should seek to reach a 90 degree angle, or as close to one as possible.</p><p>-Bring your R foot down until it nearly touches the floor, and bring your L foot upwards. Maintain leg rigidity throughout the exercise. Your head should stay off the ground, supported by tightened upper abdominals.</p><p>-(L up R down, L down R up, x2) ^v, v^, ^v, v^ = 1 rep</p><p>-Primarily works the Rectus Abdominus, the hip flexors and the lower back. Secondarily works the Obliques. Emphasis placed on the lower quadrant of the abs.</p><p></p>', 'Obliquus externus abdominis',
	'Rectus abdominis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (122, 'Fly With Cable', '', 'Pectoralis major',
	NULL, NULL, 'https://wger.de/media/exercise-images/122/Incline-cable-flyes-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (145, 'Fly With Dumbbells', '<p>Take two dumbbells and lay on a bench, make sure the feet are firmly on the ground and your back is not arched, but has good contact with the bench. The arms are stretched in front of you, about shoulder wide. Bend now the arms a bit and let them down with a half-circle movement to the side. Without changing the angle of the elbow bring them in a fluid movement back up.</p>', 'Pectoralis major',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (146, 'Fly With Dumbbells, Decline Bench', '<p>The exercise is the same as with a regular bench:</p><p>Take two dumbbells and lay on a bench, make sure the feet are firmly on the ground and your back is not arched, but has good contact with the bench. The arms are stretched in front of you, about shoulder wide. Bend now the arms a bit and let them down with a half-circle movement to the side. Without changing the angle of the elbow bring them in a fluid movement back up.</p>', 'Pectoralis major',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (85, 'French Press (skullcrusher) Dumbbells', '<p>Hold the dumbbells and lay down on a flat bench in such a way that around 1/4 of your head is over the edge. Stretch your arms with the weights and bend them so that the dumbbells are lowered (make sure they don''t touch each other). Just before they touch your forehead, push them up.</p><p>Pay attention to your elbows and arms: only the triceps are doing the work, the rest of the arms should not move.</p>', 'Triceps brachii',
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (84, 'French Press (skullcrusher) SZ-bar', '<p>Hold the SZ-bar and lay down on a flat bench in such a way that around 1/4 of your head is over the edge. Stretch your arms with the bar and bend them so that the bar is lowered. Just before it touches your forehead, push it up.</p><p>Pay attention to your elbows and arms: only the triceps are doing the work, the rest of the arms should not move.</p>', 'Triceps brachii',
	NULL, 8, 'https://wger.de/media/exercise-images/84/Lying-close-grip-triceps-press-to-chin-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (233, 'Front Raises', '<p>To execute the exercise, the lifter stands with their feet shoulder width apart and weights or resistance handles held by their side with a pronated (overhand) grip.</p><p>The movement is to bring the arms up in front of the body to eye level and with only a slight bend in the elbow. This isolates the anterior deltoid muscle (front of the shoulder) and uses the anterior deltoid to lift the weight.</p><p>When lifting it is important to keep the body still so the anterior deltoid is fully utilised; if the weight cannot be lifted by standing still then it is too heavy and a lower weight is needed. It is important to keep a slight bend in the elbow when lifting as keeping the elbow locked will add stress to the elbow joint and could cause injury.</p><p>A neutral grip, similar to that used in the hammer curl, can also be used. With this variation the weight is again raised to eye level, but out to a 45 degree angle from the front of the body. This may be beneficial for those with shoulder injuries, particularly those related to the rotator cuff.</p>', 'Anterior deltoid',
	'Biceps brachii', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (191, 'Front Squats', '<p>Squats</p>', 'Gluteus maximus',
	'Rectus abdominis', 1, 'https://wger.de/media/exercise-images/191/Front-squat-2-857x1024.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (326, 'Full Sit Outs', '<p>(A) Get in high plank position on your hands and toes.(B) Shift your weight to your left hand as you turn your body to the right; bend your right leg behind you and extend your right arm up. Return to the center and repeat on the opposite side. Continue, alternating sides.<strong>Make it easier:</strong>Dont raise your arm after you bend your leg behind you.<strong>Make it harder:</strong>Balance with your arm and leg extended for two counts.</p>', 'Gluteus maximus',
	'Obliquus externus abdominis', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (408, 'Glute Bridge', '<p>Lie on you back with your hips and knees flexed, feet on the ground. From this position, raise your butt off of the ground to a height where your body makes a straight line from your knees to your shoulders. To make the exercise more intense, you can add weight by letting a barbell rest on your hips as you complete the motion, or you can put your feet on a slightly higher surface such as a step or a bench.</p>', 'Gluteus maximus',
	'Biceps femoris', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (116, 'Good Mornings', '', 'Biceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/116/Good-mornings-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (86, 'Hammercurls', '<p>Hold two dumbbells and sit on a bench with a straight back, the shoulders are slightly rolled backwards. Your pals point to your body. Bend the arms and bring the weight up with a fast movement. Don''t rotate your hands, as with the curls. Without any pause bring the dumbbell down with a slow, controlled movement.</p><p>Don''t swing your body during the exercise, the biceps should do all the work here. The elbows are at your side and don''t move.</p>', 'Biceps brachii',
	NULL, 3, 'https://wger.de/media/exercise-images/86/Bicep-hammer-curl-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (138, 'Hammercurls on Cable', '<p>Take a cable in your hands (palms parallel, point to each other), the body is straight. Bend the arms and bring the weight up with a fast movement. Without any pause bring it back down with a slow, controlled movement, but don''t stretch completely your arms.</p><p>Don''t swing your body during the exercise, the biceps should do all the work here. The elbows are at your side and don''t move.</p>', 'Biceps brachii',
	'Brachialis', NULL, 'https://wger.de/media/exercise-images/138/Hammer-curls-with-rope-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (317, 'Hand Grip', '<p>chrome Hand Flex Grip to build up forearms muscles</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (807, 'Handstand Pushup', 'The handstand push-up (press-up) - also called the vertical push-up (press-up) or the inverted push-up (press-up) also called commandos- is a type of push-up exercise where the body is positioned in a handstand. For a true handstand, the exercise is performed free-standing, held in the air. To prepare the strength until one has built adequate balance, the feet are often placed against a wall, held by a partner, or secured in some other way from falling. Handstand pushups require significant strength, as well as balance and control if performed free-standing.', 'Trapezius',
	'Triceps brachii', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (166, 'Hanging Leg Raises', '<p>Hanging from bar or straps, bring legs up with knees extended or flexed</p>', 'Rectus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (291, 'Hercules Pillars', '<p>Grab two cables stand in the middle so both have tension and hold</p>', 'Biceps brachii',
	'Brachialis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (304, 'High Knee Jumps', '<p>-Start with legs slightly wider than shoulder width</p><p>-Drop into a bodyweight squat</p><p>-As you hit the bottom of the squat, explode upwards into a jump while simultaneously tucking your knees into your chest midflight. Remain tucked until the apex of your jump.</p><p>-Land on both feet, making sure your knees are not locked so as to avoid excessive strain upon your joints. Collect yourself into the next rep as quickly but under control as possible.</p>', 'Biceps femoris',
	'Gastrocnemius', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (432, 'High Knees', '<p>-Start with legs at a comfortable standing width</p><p>-Run in place, bringing knees to or above waist level</p>', 'Gastrocnemius',
	'Quadriceps femoris', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (164, 'High Pull', '<p>Use a light barbell, perform explosive lift up starting from underneath knee cap level. Lift/raise explosively using hips, at shoulder level. Tempo: 2111</p>', 'Anterior deltoid',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (650, 'Hindu Squats', '<p>Start with your feet shoulder width apart and arms slightly behind your back.</p><p>As you descend towards the floor, raise your heels off the ground, while keeping your back as vertical as possible.</p><p>Upon attaining the bottom position, touch the hands to the heels.</p><p>Then stand up ending with the heels on the ground, arms extended in front of the chest then rowing into the start position.</p>', 'Quadriceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (376, 'Hip Raise, Lying', 'Lying down on your back, with your feet flat on the floor. Raise your hips up evenly as high as you can and hold for as long as you can.', 'Biceps femoris',
	'Gluteus maximus', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (854, 'Hip Thrust', '<p>The bar should go directly on your upper thigh, directly below your crotch. Your feet should be directly under your knees. Push your hips up so that you form a straight line from your knees to your shoulders. Use a pad for comfort.</p>', 'Gluteus maximus',
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (383, 'Hollow Hold', '<p>Get on a mat and lie on your back. Contract your abs, stretch your raise and legs and raise them (your head and shoulders are also be raised). Make sure your lower back remains in contact with the mat.</p>', 'Obliquus externus abdominis',
	'Rectus abdominis', 4, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (128, 'Hyperextensions', '<p>Lay on the hyperextension pad with the belly button just at the leading edge, the upper body can hang freely. Tense your whole back''s muscles and bring your upper body up till it is horizontal, but not more. Go slowly down and don''t relax your muscles.</p>', 'Trapezius',
	NULL, NULL, 'https://wger.de/media/exercise-images/128/Hyperextensions-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (163, 'Incline Bench Press', '<p>To do slowly, tempo is 4010</p>', 'Pectoralis major',
	'Triceps brachii', 1, 'https://wger.de/media/exercise-images/163/Incline-bench-press-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (206, 'Incline Dumbbell Flye', '<p>Use inclined bench. Hold dumbbells straight out to your sides, elbows slightly bent. Bring arms together above you, keeping angle of elbows fixed.</p>', 'Pectoralis major',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (210, 'Incline Dumbbell Press', '<ul><li>Bench should be angled anywhere from 30 to 45 degrees</li><li>Be sure to press dumbbells straight upward (perpendicular to the floor)</li></ul>', 'Pectoralis major',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (340, 'Incline Dumbbell Row', '<ol><li>Using a neutral grip, lean into an incline bench.</li><li>Take a dumbbell in each hand with a neutral grip, beginning with the arms straight. This will be your starting position.</li><li>Retract the shoulder blades and flex the elbows to row the dumbbells to your side.</li><li>Pause at the top of the motion, and then return to the starting position.</li></ol>', 'Latissimus dorsi',
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (165, 'Incline Plank With Alternate Floor Touch', '<p>Perform the plank with legs elevated, feet on a gymball. Once stabilised, slowly move one foot sideways off the ball, then make it touch the floor, then come back to starting position. Alternate with the other foot.</p><p>This is a core exercise.</p>', 'Rectus abdominis',
	'Obliquus externus abdominis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (168, 'Incline Pushups', '<p>Regular push with a 30 degree incline.</p>', 'Pectoralis major',
	'Biceps femoris', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (338, 'Isometric Wipers', '<p>Assume push-up position, with hands slightly wider thanshoulder width.</p><p>Shift body weight as far as possible to one side,allowing the elbow on that side to flex.</p><p>Reverse the motion, moving completely over to the other side.</p><p>Return to the starting position, and repeat for the desired number of repetitions.</p>', 'Pectoralis major',
	'Rectus abdominis', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (423, 'Jogging', '<p>Get your shoes on, go outside and start running at a moderate pace.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (810, 'Jumping Jacks', '<p>A jumping jack or star jump, also called side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide and the hands going overhead, sometimes in a clap, and then returning to a position with the feet together and the arms at the sides</p>', 'Quadriceps femoris',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (249, 'Kettlebell Swings', '<p>Hold the kettlebell securely in both hands. Keep your back flat throughout the move, avoiding any rounding of the spine.Keeping your knees "soft", hinge your hips backwards, letting the kettlebell swing between your knees.</p><p>You want to bend from the hips as far as you can <em>without letting your back round forwards</em>. Then, snap your hips forwards quickly and standing up straight, locking your body in an upright posture.</p><p>The speed you do this will cause your arms and the kettlebell to swing up in front of you. Don''t try to <em>lift</em> the kettlebell with your arms. The snapping forwards of your hips will cause the kettlebell to swing forwards through momentum. Depending on the weight of the kettlebell and the speed of your hip movement, your arms will swing up to about shoulder height. At the top of this swing, let your hips hinge backwards again as the kettlebell swings back down to between your legs and the start of the next repetition.</p>', 'Gluteus maximus',
	'Biceps femoris', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (148, 'Lateral Raises', '<p>.</p>', 'Anterior deltoid',
	NULL, 3, 'https://wger.de/media/exercise-images/148/lateral-dumbbell-raises-large-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (149, 'Lateral Raises on Cable, One Armed', '<p>.</p>', 'Anterior deltoid',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (306, 'Lateral-to-Front Raises', '<p>-(1) Perform a lateral raise, pausing at the top of the lift (2).</p><p>-Instead of lowering the weight, bring it to the front of your body so that you appear to be at the top position of a front raise. You will do this by using a Pec Fly motion, maintaining straight arms. (3)</p><p>-Now lower the weight to your quadriceps, or, in other words, lower the dumbbells as though you are completing a Front Raise repetition. (4)</p><p>-Reverse the motion: Perform a front raise (5), at the apex of the lift use a Reverse Fly motion to position the weights at the top of a Lateral Raise (6), and finally, lower the weights until your palms are essentially touching the sides of your thighs (7). THIS IS ONE REP.</p><p>(1) l <em>front view </em>(2) -l-<em> FV </em> (3) l- <em>side view</em>  (4) l <em>SV/FV</em>  (5) l- <em>SV </em> (6) -l- <em>FV </em> (7) l <em>FV/SV</em></p>', 'Anterior deltoid',
	'Trapezius', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (188, 'Lat Pull Down (Leaning Back)', '<p>Lean Back, Pull into chest</p>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (187, 'Lat Pull Down (Straight Back)', '<p>Pull bar down to strenum and keep straight back.</p>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (792, 'Leg Curl', 'The leg curl, also known as the hamstring curl, is an isolation exercise that targets the hamstring muscles. The exercise involves flexing the lower leg against resistance towards the buttocks. Other exercises that can be used to strengthen the hamstrings are the glute-ham raise and the deadlift.', 'Biceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (154, 'Leg Curls (laying)', '<p>Lay on a bench and put your calves behind the leg holder (better if they are hold on around the lower calves). Hold a grip on the bars to make sure the body is firmly in place. Bend your legs bringing the weight up, go slowly back. During the exercise the body should not move, all work is done by the legs.</p>', 'Biceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/154/lying-leg-curl-machine-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (117, 'Leg Curls (sitting)', '', 'Biceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/117/seated-leg-curl-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (118, 'Leg Curls (standing)', '', 'Biceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/118/standing-leg-curls-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (796, 'Leg Extension', 'The leg extension is a resistance weight training exercise that targets the quadriceps muscle in the legs. The exercise is done using a machine called the Leg Extension Machine. There are various manufacturers of these machines and each one is slightly different. Most gym and weight rooms will have the machine in their facility. The leg extension is an isolated exercise targeting one specific muscle group, the quadriceps. It should not be considered as a total leg workout, such as the squat or deadlift. The exercise consists of bending the leg at the knee and extending the legs, then lowering them back to the original position.', 'Quadriceps femoris',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (177, 'Leg Extension', '<p>Seated Leg Extension Machine</p>', 'Quadriceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/177/Seated-leg-curl-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (804, 'Leg Extension', 'The leg extension is a resistance weight training exercise that targets the quadriceps muscle in the legs. The exercise is done using a machine called the Leg Extension Machine. There are various manufacturers of these machines and each one is slightly different. Most gym and weight rooms will have the machine in their facility. The leg extension is an isolated exercise targeting one specific muscle group, the quadriceps. It should not be considered as a total leg workout, such as the squat or deadlift. The exercise consists of bending the leg at the knee and extending the legs, then lowering them back to the original position.', 'Quadriceps femoris',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (788, 'Leg Press', 'The leg press is a weight training exercise in which the individual pushes a weight or resistance away from them using their legs.', 'Biceps femoris',
	'Gastrocnemius', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (115, 'Leg Presses (narrow)', '<p>The exercise is very similar to the wide leg press:</p><p>Sit on the machine and put your feet on the platform so far apart that you could just put another foot in between them. The feet are parallel and point up.</p><p>Lower the weight so much, that the knees form a right angle. Push immediately the platform up again, without any pause. When in the lower position, the knees point a bit outwards and the movement should be always fluid.</p>', 'Quadriceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (114, 'Leg Presses (wide)', '<p>Sit on the machine and put your feet on the platform, a bit more than shoulder wide. The feet are turned outwards by a few degrees.</p><p>Lower the weight so much, that the knees form a right angle. Push immediately the platform up again, without any pause. When in the lower position, the knees point a bit outwards and the movement should be always fluid.</p>', 'Quadriceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (130, 'Leg Press on Hackenschmidt Machine', '', 'Quadriceps femoris',
	NULL, NULL, 'https://wger.de/media/exercise-images/130/Narrow-stance-hack-squats-2-1024x721.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (791, 'Leg Raise', 'The leg raise is a strength training exercise which targets the iliopsoas (the anterior hip flexors). Because the abdominal muscles are used isometrically to stabilize the body during the motion, leg raises are also often used to strengthen the rectus abdominis muscle and the internal and external oblique muscles.', 'Obliquus externus abdominis',
	'Rectus abdominis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (125, 'Leg Raises, Lying', '<p>Lay down on a bench and hold onto the recliner with your hands to keep you stable. Hold your legs straight and lift them till they make an angle of about 45. Make a short pause of 1 sec. and go slowly down to the initial position. To increase the intensity you can make a longer pause of 7 sec. every 5th time.</p>', 'Rectus abdominis',
	'Serratus anterior', 4, 'https://wger.de/media/exercise-images/125/Leg-raises-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (126, 'Leg Raises, Standing', '<p>Put your forearms on the pads on the leg raise machine, the body is hanging freely. Lift now your legs with a fast movement as high as you can, make a short pause of 1sec at the top, and bring them down again. Make sure that during the exercise your body does not swing, only the legs should move.</p>', 'Rectus abdominis',
	'Serratus anterior', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (211, 'Leverage Machine Chest Press', '<p>Be sure to adjust seat height so that the handles are towards the bottom of your pectorals.</p>', 'Pectoralis major',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (214, 'Leverage Machine Iso Row', '<p>Adjust seat height so that the handles are at the bottom of your pectorals or just below.</p>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (281, 'L Hold', '<p>Hold the L position for as long as possible</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (143, 'Long-Pulley (low Row)', '<p>Sit down, put your feet on the supporting points and grab the bar with a wide grip. Pull the weight with a rapid movement towards your belly button, not upper. Keep your arms and elbows during the movement close to your body. Your shoulders are pulled together. Let the weight slowly down till your arms are completely stretched.</p>', 'Latissimus dorsi',
	'Biceps brachii', NULL, 'https://wger.de/media/exercise-images/143/Cable-seated-rows-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (144, 'Long-Pulley, Narrow', '<p>The exercise is the same as the regular long pulley, but with a narrow grip:</p><p>Sit down, put your feet on the supporting points and grab the bar with a wide grip. Pull the weight with a rapid movement towards your belly button, not upper. Keep your arms and elbows during the movement close to your body. Your shoulders are pulled together. Let the weight slowly down till your arms are completely stretched.</p>', 'Latissimus dorsi',
	'Biceps brachii', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (389, 'Low Box Squat - Wide Stance', '<p>Unrack the bar and set your stance wide, beyond your hips. Push your hips back and sit down to a box that takes you below parallel. Sit completely down, do not touch and go. Then explosively stand up. Stay tight in your upper back and torso throughout the movement.</p>', 'Gluteus maximus',
	'Quadriceps femoris', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (312, 'Lying Rotator Cuff Exercise', '<p>This is an excercise for problems with the levator muscles. PrimaryInfraspinatus, secondary Teres Minor.</p><p>Lying on side. Keep elbow on waist and in 90 dgr angle. Rotate towards stomach. Add weight as fit.</p>', NULL,
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (141, 'MGM Machine', '', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (229, 'Military Press', '<p>The military press is a variation of the overhead press weight training exercise using very strict form and no pre-movement momentum.The military press targets the deltoid muscles in the shoulders as well as the triceps. Additionally, it works the core and legs, which the lifter uses to help stabilize the weight.The lift begins with the lifter standing and the barbell on the anterior deltoids. The lifter then raises the barbell overhead by pressing the palms of the hands against the underside of the barbell.</p>', 'Anterior deltoid',
	'Pectoralis major', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (256, 'Military Press', '<p>On an SZ-bar grip your hands on the outside of each bend and stand with your arms straight down, palms facing your legs.Pull the bar (bending your arms at the elbow) to your chest, and the push the bar above your head (arms as straight as possible).Return the bar to your chest by dropping your arms at the elbows.Return the bar to it''s origional position (stand with your arms straight down, palms facing your legs.)</p>', NULL,
	NULL, 2, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (626, 'Muscle up', '<p>The body is then explosively pulled up by the arms in a radial pull-up, with greater speed than a regularpull-up. When the bar approaches the upper chest, the wrists are swiftly flexed to bring the forearms above the bar. The body is leaned forward, and the elbows are straightened by activating the triceps. The routine is considered complete when the bar is at the level of the waist and the arms are fully straight.</p><p>To dismount, the arms are bent at the elbow, and the body is lowered to the floor, and the exercise can be repeated.</p><p>As a relatively advanced exercise, muscle-ups are typically first learned with an assistive kip. The legs swing (kip) up and provide momentum to assist in the explosive upward force needed to ascend above the bar. More advanced athletes can perform a strict variation of the muscle-up which is done slowly, without any kip. This variation begins with a still dead hang and uses isometric muscle contraction to ascend above the bar in a slow, controlled fashion.</p>', 'Biceps brachii',
	'Biceps femoris', 6, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (93, 'Negative Crunches', '<p>Sit yourself on the decline bench and fix your legs. Cross your arms over the chest and bring with a rolling movement your upper body up, go now without a pause and with a slow movement down again. Don''t let your head move during the exercise.</p>', 'Rectus abdominis',
	NULL, NULL, 'https://wger.de/media/exercise-images/93/Decline-crunch-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (197, 'Overhand Cable Curl', '<p>Hands at shoulder height, curl arms in toward head, then back out.</p>', 'Biceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (355, 'Overhead Squat', '<p>The barbell is held overhead in a wide-armsnatchgrip; however, it is also possible to use a closer grip if balance allows.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (270, 'Pause Bench', '<p>Lower the bar to your chest and pause (but do not rest) there for 2 seconds. Press back up. use the same weight you would on bench press, but perform only single reps. Total the number of reps you did in one set of bench press (if you did 3 sets of 8 do 8 sinlge pause bench reps.</p>', 'Pectoralis major',
	'Triceps brachii', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (202, 'Pendelay Rows', '<p>Back excercise with a barbell with a starting position which is in a bent over position with the back paralell to the ground. The barbell is on the ground at chest level.For the movement grab the barbell at shoulder width grip and pull towards your chest without losing the bent over position and without moving anything but your arms</p>', 'Latissimus dorsi',
	'Trapezius', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (182, 'Perfect Push Up', '<p>Push up with perfect push up</p>', 'Pectoralis major',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (361, 'Pike Push Ups', '<p>Push Up performed from a pike position (optional to have feet elevated).</p>', 'Pectoralis major',
	'Triceps brachii', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (160, 'Pistol Squat', '<p>One legged squat</p>', 'Biceps femoris',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (238, 'Plank', '<p>Get into a position on the floor supporting your weight on your forearms and toes. Arms are bent and directly below the shoulder.</p><p>Keep your body straight at all times and hold this position as long as possible. To increase difficulty an arm or leg can be raised while performing this exercise. </p>', 'Obliquus externus abdominis',
	'Rectus abdominis', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (189, 'Power Clean', '<p>Olympic weight lifting</p>', 'Pectoralis major',
	'Quadriceps femoris', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (193, 'Preacher Curls', '<p>Place the EZ curl bar on the rest handles in front of the preacher bench.Lean over the bench and grab the EZ curl bar with palms up.Sit down on the preacher bench seat so your upper arms rest on top of the pad and your chest is pressed against the pad.Lower the weight until your elbows are extended and arms are straight.Bring the weights back up to the starting point by contracting biceps. Repeat</p>', 'Brachialis',
	'Brachialis', NULL, 'https://wger.de/media/exercise-images/193/Preacher-curl-3-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (429, 'Prone Scapular Retraction - Arms at Side', '<p>Lying on stomach with head on towel.</p><p>Stretch arms straight out to your sides.</p><p>Slowly lift your arms, pulling your shoulderblades together, hold for 3 seconds.</p><p></p>', 'Trapezius',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (107, 'Pull-ups', '<p>Grab the pull up bar with a wide grip, the body is hanging freely. Keep your chest out and pull yourself up till your chin reaches the bar or it touches your neck, if you want to pull behind you. Go with a slow and controlled movement down, always keeping the chest out.</p>', 'Latissimus dorsi',
	'Anterior deltoid', 6, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (140, 'Pull Ups on Machine', '', 'Latissimus dorsi',
	'Anterior deltoid', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (190, 'Push Press', '<p>olympic weight lifting</p>', 'Trapezius',
	'Gluteus maximus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (790, 'Pushups', 'A push-up (or press-up if the hands are wider than shoulders placing more emphasis on the pectoral muscles) is a common calisthenics exercise beginning from the prone position. By raising and lowering the body using the arms, push-ups exercise the pectoral muscles, triceps, and anterior deltoids, with ancillary benefits to the rest of the deltoids, serratus anterior, coracobrachialis and the midsection as a whole. Push-ups are a basic exercise used in civilian athletic training or physical education and commonly in military physical training. They are also a common form of punishment used in the military, school sport, or some martial arts disciplines.', 'Anterior deltoid',
	'Pectoralis major', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (195, 'Push Ups', '<p>Start with your body streched, your hands are shoulder-wide appart on the ground. Push yourself off the ground till you strech your arms. The back is always straight and as well as the neck (always look to the ground). Lower yourself to the initial position and repeat.</p>', 'Triceps brachii',
	'Anterior deltoid', 7, 'https://wger.de/media/exercise-images/195/Push-ups-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (161, 'Rack Deadlift', '<p>Deadlift to be done using a Smith machine or a free rack. Bar or barbell hould be just right under the knee cap level. Lift using the glutes and through the heels, then come back to starting postion with a control movement of 2 seconds.</p><p>This exercise targets mainly the lower back and glutes.</p>', 'Gluteus maximus',
	'Biceps brachii', NULL, 'https://wger.de/media/exercise-images/161/Dead-lifts-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (237, 'Rear Delt Raises', '<p>Seated on a bench bWith the dumbbells on the floor bend over at 45 Degrees and then slowly raise each dumbbell to shoulder height and hold for a couple seconds before lowering to the starting position.</p><p></p>', NULL,
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (670, 'Renegade Row', '<p>Get into pushup position gripping some dumbbells. Perform one pushup, then drive your left elbo up, bringing the dumbell up to your body. Return the dumbell to starting position.</p><p>Perform another pushup and then row with the other arm to complete one rep.</p>', 'Latissimus dorsi',
	'Trapezius', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (208, 'Reverse Bar Curl', '<p>Hold bar with reverse (or "overhand") grip, palms facing the floor.</p>', 'Biceps brachii',
	NULL, 2, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (771, 'Reverse Curl', 'The reverse-grip barbell curl is a variation on the biceps curl where the palms face downward. The switch from an underhand to an overhand grip brings the forearm and brachialis muscles more into the exercise.', 'Biceps brachii',
	'Brachialis', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (399, 'Reverse Grip Bench Press', '<p>Upper chest focuses exercise that also works triceps</p>', 'Pectoralis major',
	'Triceps brachii', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (409, 'Reverse Plank', '<p>Plank with stomach towards ceiling</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (360, 'Ring Dips', '<p>Dips peformed on gymnastic rings.</p>', 'Triceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (263, 'Roman Chair', '<p>Crunches on roman chair</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (351, 'Romanian Deadlift', '<p>DL from top to pos 2:https://www.youtube.com/watch?v=WtWtjViRsKo</p>', NULL,
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (801, 'Row', 'In strength training, rowing (or a row, usually preceded by a qualifying adjective  for instance a seated row) is an exercise where the purpose is to strengthen the muscles that draw the rower''s arms toward the body (latissimus dorsi) as well as those that retract the scapulae (trapezius and rhomboids) and those that support the spine (erector spinae). When done on a rowing machine, rowing also exercises muscles that extend and support the legs (quadriceps and thigh muscles). In all cases, the abdominal and lower back muscles must be used in order to support the body and prevent back injury.', 'Latissimus dorsi',
	'Trapezius', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (142, 'Rowing, Lying on Bench', '', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (108, 'Rowing, Seated', '', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (106, 'Rowing, T-bar', '<p>The execution of this exercise is very similar to the regular bent over rowing, only that the bar is fixed here.</p><p>Grab the barbell with a wide grip (slightly more than shoulder wide) and lean forward. Your upper body is not quite parallel to the floor, but forms a slight angle. The chest''s out during the whole exercise. Pull now the barbell with a fast movement towards your belly button, not further up. Go slowly down to the initial position. Don''t swing with your body and keep your arms next to your body.</p>', 'Latissimus dorsi',
	'Anterior deltoid', NULL, 'https://wger.de/media/exercise-images/106/T-bar-row-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (397, 'Run', '<p>Running or jogging outside in a park, on the tracks,...</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (398, 'Run - Interval Training ', '<p>Run and do some interval trainings such as hill repat, fartlek,..</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (269, 'Run - Treadmill', '<p>Run on a treadmill</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (631, 'Scissors', '<p>Scissors is an abdominal exercise that strengthens the transverse abdominals, helping flatten your belly and strengthen your entire core. Scissors is not only a core strength move, but it is also a great stretch for your hamstrings and your lower back. Everyone is looking for new ways to work the core, toflatten the bellyand to improve flexibility. If you learn how to do Scissors you will get everything rolled together in one move.</p>', 'Rectus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (386, 'Seated Triceps Press', '<p>Sit down on a back (better with back support). Take a dumbbell firmly with both hands and hold it with extended arms over your head. With your palms facing upward and holding the weight of the dumbbell, slowly lower the weight behind your head.</p><p></p>', 'Triceps brachii',
	NULL, 8, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (339, 'Shotgun Row', '<ol><li>Attach a single handle to a low cable.</li><li>After selecting the correct weight, stand a couple feet back with a wide-split stance. Your arm should be extended and your shoulder forward. This will be your starting position.</li><li>Perform the movement by retracting the shoulder and flexing the elbow. As you pull, supinate the wrist, turning the palm upward as you go.</li><li>After a brief pause, return to the starting position.</li></ol>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (802, 'Shoulder Fly', 'The shoulder fly (also known as a lateral raise) works the deltoid muscle of the shoulder. The movement starts with the arms straight, and the hands holding weights at the sides or in front of the body. Body is in a slight forward-leaning position with hips and knees bent a little. Arms are kept straight or slightly bent, and raised through an arc of movement in the coronal plane that terminates when the hands are at approximately shoulder height. Weights are lowered to the starting position, completing one rep. When using a cable machine the individual stands with the coronal plane in line with the pulley, which is at or near the ground.[9] The exercise can be completed one shoulder at a time (with the other hand used to stabilize the body against the weight moved), or with both hands simultaneously if two parallel pulleys are available.', 'Anterior deltoid',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (119, 'Shoulder Press, Barbell', '<p>Sit on a bench, the back rest should be almost vertical. Take a barbell with a shoulder wide grip and bring it up to chest height. Press the weight up, but don''t stretch the arms completely. Go slowly down and repeat.</p>', 'Anterior deltoid',
	NULL, 1, 'https://wger.de/media/exercise-images/119/seated-barbell-shoulder-press-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (123, 'Shoulder Press, Dumbbells', '<p>Sit on a bench, the back rest should be almost vertical. Take two dumbbells and bring them up to shoulder height, the palms and the elbows point during the whole exercise to the front. Press the weights up, at the highest point they come very near but don''t touch. Go slowly down and repeat.</p>', 'Anterior deltoid',
	NULL, 3, 'https://wger.de/media/exercise-images/123/dumbbell-shoulder-press-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (152, 'Shoulder Press, on Machine', '', 'Anterior deltoid',
	NULL, NULL, 'https://wger.de/media/exercise-images/152/seated-shoulder-press-machine-large-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (155, 'Shoulder Press, on Multi Press', '<p>The exercise is basically the same as with a free barbell:</p><p>Sit on a bench, the back rest should be almost vertical. Take a bar with a shoulder wide grip and bring it down to chest height. Press the weight up, but don''t stretch the arms completely. Go slowly down and repeat.</p>', 'Anterior deltoid',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (805, 'Shoulder Shrug', 'The shoulder shrug (usually called simply the shrug) is an exercise in weight training used to develop the upper trapezius muscle. The lifter stands erect, hands about shoulder width apart, and raises the shoulders as high as possible, and then lowers them, while not bending the elbows, or moving the body at all. The lifter may not have as large a range of motion as in a normal shrug done for active flexibility. It is usually considered good form if the slope of the shoulders is horizontal in the elevated position.', 'Trapezius',
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (150, 'Shrugs, Barbells', '<p>Take a barbell and stand with a straight body, the arms are hanging freely in front of you. Lift from this position the shoulders as high as you can, but don''t bend the arms during the movement. On the highest point, make a short pause of 1 or 2 seconds before returning slowly to the initial position.</p><p>When training with a higher weight, make sure that you still do the whole movement!</p>', 'Anterior deltoid',
	NULL, 1, 'https://wger.de/media/exercise-images/150/Barbell-shrugs-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (151, 'Shrugs, Dumbbells', '<p>Stand with straight body, the hands are hanging freely on the side and hold each a dumbbell. Lift from this position the shoulders as high as you can, but don''t bend the arms during the movement. On the highest point, make a short pause of 1 or 2 seconds before returning slowly to the initial position.</p><p>When training with a higher weight, make sure that you still do the whole movement!</p>', 'Anterior deltoid',
	NULL, 3, 'https://wger.de/media/exercise-images/151/Dumbbell-shrugs-1.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (176, 'Side Crunch', '<p>Hold weight in one hand. Bend side ways to the knee. Pull upo to upright position using your obliquus.</p>', 'Obliquus externus abdominis',
	'Rectus abdominis', 4, 'https://wger.de/media/exercise-images/176/Cross-body-crunch-2.png')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (278, 'Side Dumbbell Trunk Flexion', '<p>AKA dumbbell side bends. Stand in line with the hips with slightly bent knees, maintain the natural curvature of the spine, hand stretched by the body, grip the barbell with one hand. <em></em>Make slow and controlled torso side flexions till you reach the angle of approximately 45.</p>', 'Obliquus externus abdominis',
	'Rectus abdominis', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (422, 'Side-lying External Rotation', '<p>With a weight in one hand, lie on your side opposite the weight. Keep your knees slightly bent. Hold your elbow against your side, and extend your upper arm straight ahead of you. While continuing to hold your elbow against your side, rotate your upper arm 90 degrees upwards.</p><p>It is helpful to place a towel under your armpit to help with the form on this exercise. Placing a support under your head for the duration of the exercise is also a good idea.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (325, 'Side Plank', '<p>Works your obliques and helps stabilize your spine. Lie on your side and support your body between your forearm and knee to your feet.</p>', 'Rectus abdominis',
	'Obliquus externus abdominis', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (319, 'Side Raise', '<p>Stand up or sit , keep both weights in front against legs or at side. Keep arms at around a 90 degree angle. Lift elbows up slowly and squeese traps when at topmost position. Lower the weights slowly back to starting position.</p><p>2 seconds up, 2 seconds down</p>', NULL,
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (302, 'Side to Side Push Ups', '<p>-start in push up position</p><p>-lean the body weight to the right side, and complete a push up with the chest over the right hand</p><p>-come back to the centered position</p><p>-on rep 2, lean to the left side</p>', 'Anterior deltoid',
	'Obliquus externus abdominis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (205, 'Single-arm Preacher Curl', '<p>Sit on the preacher curl bench and perform a bicep curl with a dumbbell in one hand. Your other hand can be at rest, or beneath your curling arm''s elbow.</p>', 'Biceps brachii',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (103, 'Sitting Calf Raises', '<p>Sit on a bench for calf raises and check that the feet are half free and that you can completely stretch the calf muscles down. Pull your calves up, going as far (up) as you can. Make at the highest point a short pause of 1 or 2 seconds and go down.</p>', 'Soleus',
	'Gastrocnemius', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (95, 'Sit-ups', '<p>Sit on a mat, your calves are resting on a bench, the knees make a right angle. Hold your hands behind your neck. Go now up with a rolling movement of your back, you should feel how the individual vertebrae lose contact with the mat. At the highest point, contract your abs as much as you can and hold there for 2 sec. Go now down, unrolling your back.</p><p></p>', 'Rectus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (411, 'Skipping - Standard', '<p>Do a single, double footed jump for each swing of the rope.</p><p>Work on a smooth, rhythmical movement, bouncing lightly on the balls of your feet.</p>', 'Gastrocnemius',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (218, 'Smith Machine Close-grip Bench Press', '<p>Perform a standard bench press on the smith machine, but have your hands on the bar about shoulder width apart, and keep your elbows close to your body.</p>', 'Triceps brachii',
	'Pectoralis major', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (271, 'Snach', '<p>Stand with your feet at hip width and your shins against the bar. Grasp the bar at double shoulder width and, keeping your lower back flat, drive your heels into the floor to begin lifting the bar. When it''s above your knees, explosively extend your hips and shrug your shoulders. Let the momentum carry the weight overhead.</p>', 'Anterior deltoid',
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (328, 'Speed Deadlift', '<p>Deadlift with short (&lt;1min) rest between sets.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (170, 'Splinter Sit-ups', '<p>Lie on your back with your legs straight and arms at your sides, keeping your elbows bent at 90 degrees. As you sit up, twist your upper body to the left and bring your left knee toward your right elbow while you swing your left arm back. Lower your body to the starting position, and repeat to your right. That''s 1 rep.</p>', 'Obliquus externus abdominis',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (185, 'Squat Jumps', '<p>Jump wide, then close</p>', 'Quadriceps femoris',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (111, 'Squats', '<p>Make sure you have put the barbell at a height where you can comfortably take it out and put it back in. Take it out and make yourself ready:</p><ul><li>The bar is somewhat lower than your shoulders</li><li>The feet are quite apart and point out</li><li>The head is in your neck and looks up</li><li>The chest is out</li></ul><p>Go now slowly down, till your thighs are parallel with the floor, not lower. The knees point outwards, your butt, out. Make a small pause of 1 second and with as much energy as you can, push the weight up. Make a pause of 2 seconds and repeat.</p>', 'Quadriceps femoris',
	'Gluteus maximus', 1, 'https://wger.de/media/exercise-images/111/Wide-stance-squat-1.gif')
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (795, 'Squat Thrust', 'The burpee, or squat thrust, is a full body exercise used in strength training and as an aerobic exercise. The basic movement is performed in four steps and known as a four-count burpee: Begin in a standing position. Move into a squat position with your hands on the ground. (count 1) Kick your feet back into a plank position, while keeping your arms extended. (count 2) Immediately return your feet into squat position. (count 3) Stand up from the squat position (count 4)', 'Anterior deltoid',
	'Biceps brachii', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (768, 'Standing Bicep Curl', 'Stand holding dumbbells at shoulder width apart. Face forearm upward and keep upper arm still while raising each dumbbell up to your shoulder.', 'Biceps brachii',
	'Brachialis', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (102, 'Standing Calf Raises', '<p>Get onto the calf raises machine, you should able to completely push your calves down. Stand straight, don''t make a hollow back and don''t bend your legs. Pull yourself up as high as you can. Make a small pause of 1 - 2 seconds and go slowly down.</p>', 'Gastrocnemius',
	'Soleus', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (382, 'Standing Rope Forearm', '<p>Grab a wrist roller tool with both hands while standing with your feet about shoulder width apart. If your gym does not have a wrist roller tool, you can easily put one together. All you need is a 5 or 10 pound weight plate, a strong thin rope about 3 feet long and a 6-8 inch stick or bar. Securely fasten the rope to the middle of the bar/stick and tie the other end of the rope to the weight plate. To begin this exercise, grab the bar/stick with both hands using an overhand grip. Extend both arms straight out in front of you, parallel to the floor. Next, roll the weight up from the floor by rapidly twisting the bar/stick with your hands and wrists. Once the weight reaches the top, slowly lower the plate back to the floor by reversing the motion of your hands and wrists. Repeat (if you can!).</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (293, 'Stationary Bike', '<p>Ride a Stationary Bike with varioustensions.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (209, 'Stiff-legged Deadlifts', '<ul><li>Keep legs straight</li><li>Keep back straight</li></ul>', 'Biceps femoris',
	'Gluteus maximus', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (216, 'Straight-arm Pull Down (bar Attachment)', '<p>Use the straight bar attachment on a high pulley. Grasp the two ends of the bar with your palms facing downward and your arms straight out in front of you. Pull your hands down towards your hips, while keeping your arms straight, then raise them back up to the starting position.</p>', 'Latissimus dorsi',
	'Triceps brachii', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (215, 'Straight-arm Pull Down (rope Attachment)', '<p>Use the rope attachment on a high pulley. Grasp the two ends of the rope with your arms straight out in front of you. Pull your hands down towards your hips, while keeping your arms straight, then raise them back up to the starting position.</p>', 'Latissimus dorsi',
	'Triceps brachii', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (557, 'Sumo Deadlift', '<ol><li>Begin with a bar loaded on the ground. Approach the bar so that the bar intersects the middle of the feet. The feet should be set very wide, near the collars. Bend at the hips to grip the bar. The arms should be directly below the shoulders, inside the legs, and you can use a pronated grip, a mixed grip, or hook grip. Relax the shoulders, which in effect lengthens your arms.</li><li>Take a breath, and then lower your hips, looking forward with your head with your chest up. Drive through the floor, spreading your feet apart, with your weight on the back half of your feet. Extend through the hips and knees.</li><li>As the bar passes through the knees, lean back and drive the hips into the bar, pulling your shoulder blades together.</li><li>Return the weight to the ground by bending at the hips and controlling the weight on the way down.</li></ol>', 'Quadriceps femoris',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (570, 'Sumo Squats', '<p>Stand with your feet wider than your shoulders, with your toes pointed out at a 45 degree angle and barbell on your shoulder.</p><p>While keeping your back straight, descend slowly by bending at the knees and hips as if you are sitting down (squatting).</p><p>Lower yourself until your quadriceps and hamstrings are parallel to the floor.</p><p>Return to the starting position by pressing upwards and extending your legs while maintaining an equal distribution of weight on your forefoot and heel.</p>', 'Gluteus maximus',
	'Quadriceps femoris', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (330, 'Superman', '<p>Lay flat on your stomach with your arms extended in front of you on the ground as your legs are lying flat. Lift both your arms and legs at the same time, as if you were flying, and contract the lower back. Make sure that you are breathing and, depending on your fitness level, hold the movement for at least two to five seconds per repetition.</p>', 'Gluteus maximus',
	'Latissimus dorsi', 4, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (396, 'Thruster', '<ol><li>Start by doing a front squat</li><li>At the top position, push the bar above your head (similar to a press)</li><li>Lower the bar to the shoulders</li></ol>', 'Anterior deltoid',
	'Quadriceps femoris', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (279, 'Tricep Dumbbell Kickback', '<ol><li>Start with a dumbbell in each hand and your palms facing your torso. Keep your back straight with a slight bend in the knees and bend forward at the waist. Your torso should be almost parallel to the floor. Make sure to keep your head up. Your upper arms should be close to your torso and parallel to the floor. Your forearms should be pointed towards the floor as you hold the weights. There should be a 90-degree angle formed between your forearm and upper arm. This is your starting position.</li><li>Now, while keeping your upper arms stationary, exhale and use your triceps to lift the weights until the arm is fully extended. Focus on moving the forearm.</li><li>After a brief pause at the top contraction, inhale and slowly lower the dumbbells back down to the starting position.</li><li>Repeat the movement for the prescribed amount of repetitions.</li></ol><p><strong>Variations:</strong> This exercise can be executed also one arm at a time much like the one arm rows are performed.</p><p>Also, if you like the one arm variety, you can use a low pulley handle instead of a dumbbell for better peak contraction. In this case, the palms should be facing up (supinated grip) as opposed to the torso (neutral grip).</p>', 'Triceps brachii',
	NULL, 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (186, 'Triceps Bench Press One Barbell', '<p>inka v jedn ruce v rovni ramene. Zvedat do vky napnut pae a zpt. Provdt pomalu.</p>', 'Triceps brachii',
	'Anterior deltoid', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (162, 'Triceps Dips', '<p>lift on parallel bars hold for 1 second, and lower slowly and control for 4 seconds, then come back with no rest (tempo: 4010)</p>', 'Triceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (89, 'Triceps Extensions on Cable', '<p>Grab the cable, stand with your feet shoulder wide, keep your back straight and lean forward a little. Push the bar down, making sure the elbows don''t move during the exercise. Rotate your hands outwards at the very end and go back to the initial position without pause.</p>', 'Triceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (90, 'Triceps Extensions on Cable With Bar', '<p>Grab the bar, stand with your feet shoulder wide, keep your back straight and lean forward a little. Push the bar down, making sure the elbows don''t move during the exercise. Without pause go back to the initial position.</p>', 'Triceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (139, 'Triceps Machine', '<p>.</p>', 'Triceps brachii',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (310, 'Trunk Rotation With Cable ', '<p>Seated trunk rotation with cable </p>', 'Obliquus externus abdominis',
	'Latissimus dorsi', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (318, 'Turkish Get-Up', '<p>Starting on back, move to the standing position with dumbbell in one hand. Switch hands between reps.</p>', 'Anterior deltoid',
	'Gluteus maximus', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (212, 'Underhand Lat Pull Down', '<p>Grip the pull-down bar with your palms facing you and your hands closer than shoulder-width apart. Lean back slightly and keep your back straight. Pull the bar down towards your chest, pulling your shoulders back slightly at the end of the motion.</p>', 'Latissimus dorsi',
	'Biceps brachii', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (393, 'Upper Body', '<p>Full workout of the upper arms body n chest. Focusing on the core</p>', 'Anterior deltoid',
	'Biceps brachii', 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (258, 'Upper External Oblique', '<p>Exercise for upper external oblique muscles</p>', 'Obliquus externus abdominis',
	NULL, 6, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (147, 'Upright Row, on Multi Press', '<p>The movements are basically the same as with an SZ-bar, but you use the bar on the multi press:</p><p>Stand straight, your feet are shoulder-width apart. Hold the bar with an overhand grip on your thighs, the arms are stretched. Lift the bar close to the body till your chin. The elbows point out so that at the highest point they form a V. Make here a short pause before going slowly down and repeating the movement.</p>', 'Anterior deltoid',
	'Trapezius', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (127, 'Upright Row, SZ-bar', '<p>Stand straight, your feet are shoulder-width apart. Hold the SZ-bar with an overhand grip on your thighs, the arms are stretched. Lift the bar close to the body till your chin. The elbows point out so that at the highest point they form a V. Make here a short pause before going slowly down and repeating the movement.</p>', 'Anterior deltoid',
	'Trapezius', 2, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (311, 'Upright Row w/ Dumbbells', '<p>Feet apart at shoulder width. Nice and Slow!</p>', 'Anterior deltoid',
	'Trapezius', 3, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (424, 'V-Bar Pulldown', '<p>Pulldowns using close grip v-bar.</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (359, 'Wall Handstand', '<p>Handstand against a wall for support (chest facing wall).</p>', NULL,
	NULL, 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (203, 'Wall Pushup', '<p>Pushup against a wall</p>', 'Anterior deltoid',
	'Pectoralis major', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (548, 'Wall Slides', '<p>Stand with heels, shoulders, back of head, and hips touching the wall. Start with biceps straight out and elbows at a 90 degree angle. Straighten the arms while remaining againstthe wall without arching the back off of the wall, mimicking a shoulder press movement.</p>', 'Biceps brachii',
	'Biceps femoris', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (387, 'Wall Squat', '<p>Find a nice flat piece of wall and stand with your back leaning against the wall. Slowly slide down the wall while moving your feet away from it, until your thighs are parallel to the ground and both your knees and your hips are bent at a 90 angle. Cross your arms in front of your chest and hold this position for 30 seconds.</p><p>Variant: put a big inflated rubber ball (like a small basketball) between your knees and squeeze the ball while holding the squat position</p>', 'Biceps femoris',
	'Quadriceps femoris', 7, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (320, 'Weighted Step', '<p>Box step-ups w/ barbell, 45''s on each side</p>', NULL,
	NULL, 1, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (321, 'Weighted Step-ups', '<p>box step ups w/ barbell and 45''s on each side</p>', NULL,
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (204, 'Wide-grip Pulldown', '<p>Lat pulldowns with a wide grip on the bar.</p>', 'Latissimus dorsi',
	NULL, NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;

INSERT INTO exercise_info (exercise_id, exercise_name, exercise_desc,
	primary_muscle, second_muscle, equipment_id, picture_url)
VALUES (305, 'Z Curls', '<p>-Perform a traditional dumbbell biceps curl, pausing at the top of the motion.</p><p>-Twist your hands until your palms are facing away from your shoulders (in reverse curl position). Basically, twist your right wrist inwards to the left, and vice versa.</p><p>-In a slow, controlled movement, lower the Dbells with your palms facing the ground. At the bottom of the motion, twist your wrists back into the traditional curl grip (palms facing up, towards shoulder).</p><p>-That is 1 rep</p><p></p>', 'Biceps brachii',
	'Brachialis', NULL, NULL)
ON CONFLICT (exercise_id) DO NOTHING;
