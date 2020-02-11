SELECT pet_name, name, occupation
FROM laimee.pets
INNER JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE occupation = 'Programmer';

SELECT occupation,name,pet_name, class
FROM laimee.pets INNER JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE class = 'Bird';

SELECT name, gender, pet_name, family, class
FROM laimee.pets
INNER JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE gender = 'Female' OR class = 'Reptile';

SELECT name, gender, pet_name, family, class
FROM laimee.pets
LEFT JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE gender = 'Female' OR class = 'Reptile';

SELECT name, gender, pet_name, family, class
FROM laimee.pets
RIGHT JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE gender = 'Male';  

SELECT occupation, name, pet_name, class
FROM laimee.pets
RIGHT JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE pet_name IS NULL;

SELECT pet_name, family, laimee.pets.owner_id
FROM laimee.pets
LEFT JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE laimee.pets.owner_id IS NULL;