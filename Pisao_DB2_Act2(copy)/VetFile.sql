CREATE TABLE laimee.owners (
    owner_id INTEGER PRIMARY KEY,
    name VARCHAR(20) NULL,
    gender VARCHAR(20) NULL,
    age INTEGER,
    occupation VARCHAR(30)
);

INSERT INTO laimee.owners VALUES
(1,'Alex',      'Male',15,'Lawn Mower'),
(2, 'Caroline', 'Female', 34,  'Chemist'),
(3, 'Mary',     'Female', 53,  'Personal Trainer'),
(4, 'Jason',    'Male',   39,  'Writer'),
(5, 'Edwina',   'Female', 29,  'Hobo'),
(6, 'Curtis',   'Male',   18,  'Student'),
(7, 'Judy',     'Female', 44,  'Welder'),
(8, 'Alex',     'None ya bizness',  22, 'Programmer'),
(9, 'Lucy',     'Female', 6,  'Student'),
(10, 'Chris',   'Male',   56,  'Architect'),
(11, 'Faith',   'Female', 11,  'Painter'),
(12, 'Giovanni','Male',   32,  'Architect'),
(13, 'John',    'Male',   47,  'Cook'),
(14, 'Allison', 'Female', 26, 'Student'),
(15, 'Kate',    'Female', 62,  'Retired'),
(16, 'Mary',    'None ya bizness',  37,  'Nutritionist'),
(17, 'Thomas',  'Male',   10,  'Student'),
(18, 'Owen',    'Male',   26,  'Hobo'),
(19, 'Sreehari','Male',   38,  'Programmer'),
(20, 'Zena',    'Female', 25,  'Personal Trainer'),
(21, 'Amy',     'Female',   29, 'Accountant'),
(22, 'Louie',   'Male',     19, 'Construction'),
(23, 'Monty',   'Male',     14,  'Window Cleaner'),
(24, 'Jackie',  'Female',   24,  'Programmer');

CREATE TABLE laimee.pets(
    pet_id INTEGER PRIMARY KEY,
    pet_name VARCHAR(20) NULL,
    class VARCHAR(20),
    age INTEGER,
    family VARCHAR(20),
	owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES laimee.owners (owner_id)
);

-- PETS WITH OWNER

INSERT INTO laimee.pets VALUES
(1,  'PJ',         'Mammal',    15, 'Dog',           13),
(2,  'Buffy',      'Mammal',    14, 'Dog',           13),
(3,  'Pixie',      'Mammal',    8,  'Cat',           11),
(4,  'Charlie',    'Mammal',    7,  'Cat',           7),
(5,  'Scooter',    'Mammal',    10, 'Squirrel',      7),
(6,  'Smoke',      'Bird',      4,  'Parrot',        8),
(7,  'Butch',      'Reptile',   2,  'Iguana',        14),
(8,  'Rex',        'Plant',     8,  'Venus Flytrap', 9),
(9,  'Snowflake',  'Amphibian', 23, 'Salamander',    11),
(10, 'Spot',       'Arthropod', 4,  'Black widow',   3),
(11, 'Daisy',      'Plant',     2,  'Orchid',        16),
(12, 'Squawk',     'Bird',      9,  'Hawk',          12),
(13, 'Skeeter',    'Reptile',   3,  'Snake',         13),
(14, 'Moonlight',  'Mammal',    6,  'Dog',           13),
(15, 'Sunshine',   'Fish',      1,  'Piranha',       3),
(16, 'Sandy',      'Fish',      1,  'Koi',           14),
(17, 'Wags',       'Mammal',    2,  'Dog',           1),
(18, 'Willy',      'Amphibian', 9,  'Frog',          11),
(19, 'Tank',       'Bird',      7,  'Eagle',         15),
(20, 'Ollie',      'Reptile',   14, 'Dragon',        7),
(21, 'Coco',       'Bird',      11, 'Parakeet',      3),
(22, 'Luna',       'Arthropod', 2,  'Scorpion',      12),
(23, 'Molly',      'Mammal',    5,  'Whale',         3),
(24, 'Milly',      'Arthropod', 4,  'Grasshopper',   5),
(25, 'Simba',      'Mammal',    8,  'Cat',           3),
(26, 'Jaws',       'Fish',      13, 'Barracuda',     10),
(27, 'Yoshi',      'Reptile',   4,  'Dragon',        20),
(28, 'Rango',      'Amphibian', 7,  'Frog',          4),
(29, 'Pringle',    'Mammal',    13, 'Dolphin',       2),
(30, 'Lizzie',     'Reptile',   3,  'Lizard',        6),
(31, 'Norbert',    'Bird',      7,  'Magpie',        18),
(32, 'Godzilla',   'Reptile',   20, 'Dragon',        2),
(33, 'Blue',       'Mammal',    40, 'Whale',         17),
(34, 'Blizzard',   'Plant',     6,  'Orchid',        19),
(35, 'Spinner',    'Mammal',    5,  'Dolphin',       19),
(36, 'Charmander', 'Reptile',   2,  'Lizard',        4);

-- PETS WITHOUT OWNERS

INSERT INTO laimee.pets VALUES
(37,'Puffy',    'Mammal',   2,  'Dog'),
(38, 'Jingle',    'Bird',   4,  'Parrot'),
(39, 'Sandstorm',    'Reptile',   5,  'Lizard'),
(40, 'Loggie',    'Reptile',   8,  'Crocodile');