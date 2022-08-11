SELECT * FROM animals; ---> to check whether the updated item changed or not

SELECT * FROM animals WHERE Name like '%mon';

SELECT Name FROM animals WHERE Date_of_birth >= '2016-01-01' AND Date_of_birth <= '2019-12-31';

SELECT Name FROM animals WHERE Escape_attempts < 3 AND Neutered = 'true';

SELECT Date_of_birth FROM animals WHERE Name = 'Agumon' OR Name = 'Pikachu';

SELECT Name, Escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE Neutered;

SELECT * FROM animals WHERE Name != 'Gabumon'; 

SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;

SAVEPOINT save_point;

DELETE  FROM animals; ------> deletes the animals rows

DELETE FROM animals WHERE Date_of_birth > '2022-01-01';

SELECT COUNT(*) AS Number_of_animals FROM animals;

SELECT COUNT( Escape_attempts ) AS Kind_animals FROM animals WHERE Escape_attempts = 0;

SELECT AVG( weight_kg ) AS Weight_avg FROM animals;

SELECT Name, Escape_attempts, Neutered FROM animals WHERE Escape_attempts = ( SELECT MAX(Escape_attempts) FROM animals );

SELECT Name, weight_kg FROM animals WHERE weight_kg = ( SELECT MAX(weight_kg) FROM animals ) AND weight_kg = ( SELECT MIN(weight_kg) FROM animals );

SELECT AVG( Escape_attempts ) AS escape_Average FROM animals WHERE Date_of_birth >= '1990-01-01' AND Date_of_birth <= '2000-01-01';

SELECT animals.owner_id FROM animals INNER JOIN owner ON animals.owner_id = owner.full_name GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1;

SELECT * FROM owner;
SELECT * FROM owner;
SELECT owner.full_name, animals.name FROM animals INNER JOIN owner ON owner.full_name = animals.owner_id WHERE owner.full_name='Melody Pond';
SELECT owner.full_name, animals.name FROM animals INNER JOIN species ON species.name = animals.species_id WHERE species.name='Pokemon';
SELECT owner.full_name, animals.name FROM animals INNER JOIN ON owner.full_name = animals.owner_id;
SELECT COUNT(*) FROM animals WHERE species_id = "Pokemon";
SELECT COUNT(*) FROM animals WHERE species_id = "Digimon";
SELECT name, owner_id FROM animals INNER JOIN owner ON owner.full_name = animals.owner_id WHERE owner_id = 'Jennifer Orwell' AND species_id = 'Digimon';
SELECT name, owner_id FROM animals INNER JOIN owner ON owner.full_name = animals.owner_id WHERE owner_id = 'Dean Winchester' AND escape_attempts= 0;
SELECT animals.owner_id FROM animals INNER JOIN owner ON animals.owner = animals.owner_id WHERE owner_id =  owner.full_name GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT * FROM owner;
SELECT * FROM species;
SELECT owner;