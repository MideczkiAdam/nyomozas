
-- 1. Kik beszéltek Csilláról?
SELECT p.name AS interrogated_person, i.statement
FROM interrogation i
JOIN person p ON i.person_id = p.id
WHERE i.statement LIKE '%Csilla%';

-- 2. Kik mondták, hogy „nem emlékeznek” vagy „nem tudják”?
SELECT p.name, i.statement
FROM interrogation i
JOIN person p ON i.person_id = p.id
WHERE i.statement LIKE '%nem eml%' OR i.statement LIKE '%nem tud%';

-- 3. Ki hányszor lett kihallgatva?
SELECT p.name, COUNT(*) AS times_interrogated
FROM interrogation i
JOIN person p ON i.person_id = p.id
GROUP BY p.name
ORDER BY times_interrogated DESC;

-- 4. Melyik detektív hány embert kérdezett ki?
SELECT d.name, COUNT(DISTINCT i.person_id) AS num_people_interrogated
FROM interrogation i
JOIN detective d ON i.detective_id = d.id
GROUP BY d.name
ORDER BY num_people_interrogated DESC;

-- 5. Mindenki nyilatkozott már?
SELECT p.name
FROM person p
LEFT JOIN interrogation i ON p.id = i.person_id
WHERE i.id IS NULL;

-- 6. Áruló kiléte:
SELECT * FROM person WHERE is_traitor = 1;
