
-- Tábla létrehozása: person
CREATE TABLE person (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER,
    height INTEGER,
    hair_color TEXT,
    eye_color TEXT,
    is_traitor BOOLEAN
);

-- Tábla létrehozása: detective
CREATE TABLE detective (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    birth_year INTEGER,
    experience_years INTEGER
);

-- Tábla létrehozása: interrogation
CREATE TABLE interrogation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    detective_id INTEGER,
    person_id INTEGER,
    statement TEXT,
    FOREIGN KEY(detective_id) REFERENCES detective(id),
    FOREIGN KEY(person_id) REFERENCES person(id)
);

-- Adatok beszúrása: person
INSERT INTO person (name, age, height, hair_color, eye_color, is_traitor) VALUES
('Anna', 28, 165, 'barna', 'kék', 0),
('Bence', 34, 178, 'fekete', 'barna', 0),
('Csilla', 25, 160, 'szőke', 'zöld', 1),
('Dániel', 30, 185, 'barna', 'barna', 0),
('Eszter', 27, 170, 'vörös', 'kék', 0),
('Fanni', 32, 168, 'fekete', 'zöld', 0),
('Gábor', 29, 182, 'szőke', 'barna', 0),
('Hanna', 31, 175, 'barna', 'kék', 0),
('István', 26, 180, 'barna', 'zöld', 0),
('Judit', 33, 167, 'szőke', 'barna', 0);

-- Adatok beszúrása: detective
INSERT INTO detective (name, birth_year, experience_years) VALUES
('Kiss Márton', 1980, 15),
('Nagy Júlia', 1990, 8),
('Tóth Péter', 1985, 12);

-- Adatok beszúrása: interrogation
INSERT INTO interrogation (detective_id, person_id, statement) VALUES
(1, 1, 'Nem láttam semmi gyanúsat.'),
(1, 2, 'Csilla tegnap este egyedül volt.'),
(1, 3, 'Nem emlékszem semmire.'),
(2, 4, 'Bence nagyon ideges volt.'),
(2, 5, 'Csilla furcsán viselkedett.'),
(2, 6, 'Anna sokat beszélgetett a detektívekkel.'),
(3, 7, 'Nem tudom, mi történt.'),
(3, 8, 'Csilla túl sokat kérdezett.'),
(3, 9, 'Hanna mindig ott volt, ahol valami történt.'),
(1, 10, 'Nem voltam ott, amikor a dolog történt.'),
(2, 3, 'Csilla tagadta, hogy tudna bármit is.'),
(3, 5, 'Eszter elmondta, hogy Csilla közel volt a bizonyítékhoz.');
