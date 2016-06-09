-- 1. Insert new animal.
INSERT INTO animal(family_id, species, diet_id, dangerous, size, description, average_lifespan_days)
VALUES ('7', 'mayfly', '36', '1', '1', 'ephimerida, meaning lasting only a day, insects that last less than a day in their adult stage', '1');

-- 2. Find animals in a habitat of 'Deciduous forest' and size is 'big'.
SELECT species
FROM size
JOIN animal 
ON animal.size=size.id
JOIN habitat
ON habitat.animal_id = animal.id
JOIN habitat_type
ON habitat.habitat_id=habitat_type.id
WHERE size.size = 'big' AND habitat_type.habitat LIKE '%deciduous forest';

-- 3. List Family, ordered by how many animals in that Family (highest first).
SELECT family.family, COUNT(animal.id)
FROM family LEFT JOIN animal
ON animal.family_id=family.id
GROUP BY family.family
ORDER BY COUNT(animal.id) DESC;

-- 4. Show animals with avg lifespans over 10 years ordered by longest avg lifespan.
SELECT species,
	CASE WHEN average_lifespan_yrs IS NOT NULL THEN average_lifespan_yrs
		WHEN average_lifespan_days IS NOT NULL THEN average_lifespan_days/365
		ELSE NULL END as years
FROM animal
HAVING years>10
ORDER BY years DESC;

-- 5. List A Habitat, showing name, description, spearman's rank correlation for size of animals in habitat.
-- self join for difference between each value
SELECT
	a.species,
	a.id,
    b.id,
    (a.size - b.size) as difference,
    POW((a.size - b.size), 2) as sqrdifference
FROM animal a JOIN animal b ON
	(a.id = (b.id + 1));
    
-- rank size
SELECT id, size
	FROM animal
    ORDER BY size;
    
CREATE TEMPORARY TABLE ranked_sizes(
	id INT NOT NULL AUTO_INCREMENT,
    size_id INT,
    animal_id INT,
    CONSTRAINT pranked_sizes PRIMARY KEY (id)
);
    
SELECT size, id
INTO ranked_sizes
FROM animal ORDER BY size DESC;

-- 6. List all animals in a particular habitat showing habitat, species, lifespan.

SELECT habitat_type.habitat,
	animal.species,
	CASE WHEN average_lifespan_yrs IS NOT NULL THEN average_lifespan_yrs
		WHEN average_lifespan_days IS NOT NULL THEN average_lifespan_days/365
		ELSE NULL END as lifespan
FROM animal LEFT JOIN habitat
ON habitat.animal_id=animal.id
JOIN habitat_type
ON habitat_type.id=habitat.habitat_id
WHERE habitat_type.id=2;

-- 7. Show all plants that have a toxin id with the toxin name and how many plants are listed for each toxin.
#NEED MORE ENTRIES
-- 8. Search for all animals in a particular habitat matching (or closely matching) my search key word(s).
SELECT species, habitat_type.habitat
FROM animal
JOIN habitat
ON animal.id=habitat.animal_id
JOIN habitat_type
ON habitat.habitat_id=habitat_type.id
WHERE habitat_type.habitat SOUNDS LIKE 'witlonds';

-- 9. Recommend animals to me which are the same size as the last animal entry for a habitat.
	SELECT species
	FROM animal
	JOIN (SELECT size.id as id, animal.species as lastanimal
		FROM size
		JOIN animal
		ON size.id = animal.size
		JOIN habitat
		ON habitat.animal_id = animal.id
        WHERE habitat.habitat_id = 19 
		HAVING MAX(habitat.id)) as maxsize
	ON maxsize.id = animal.size
    WHERE animal.species != maxsize.lastanimal;
    

-- -- 10. Show my animals in a particular habitat, between lifespan range with size of 'tiny' or 'very small'.
SELECT
	animal.species,
	habitat_type.habitat,
    CASE WHEN average_lifespan_yrs IS NOT NULL THEN average_lifespan_yrs
		WHEN average_lifespan_days IS NOT NULL THEN average_lifespan_days/365
		ELSE NULL END as lifespan,
        size.size
FROM size
		JOIN animal
 		ON size.id = animal.size
 		JOIN habitat
 		ON habitat.animal_id = animal.id
        JOIN habitat_type
		ON habitat.habitat_id=habitat_type.id
WHERE size.size IN ('tiny', 'very small') AND habitat_type.habitat LIKE 'Wetlands'
HAVING lifespan BETWEEN 2 AND 20;

-- 11. Delete duplicate habitat entries.
