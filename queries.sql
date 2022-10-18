-- write your queries here
SELECT owners.id, owners.first_name, vehicles.id, vehicles.make, vehicles.model, vehicles.year,
		vehicles.price, vehicles.owner_id
	FROM owners
	LEFT JOIN vehicles 
			ON (owners.id = vehicles.owner_id)
	ORDER BY owners.id;
	
SELECT owners.first_name, COUNT(*) AS count
	FROM owners
	INNER JOIN vehicles
			ON (owners.id = vehicles.owner_id)
	GROUP BY owners.id
	ORDER BY owners.first_name;
	
SELECT owners.first_name, ROUND(AVG(vehicles.price), 0), COUNT(*)
	FROM owners
	INNER JOIN vehicles
		ON (owners.id = vehicles.owner_id)
	GROUP BY owners.id
	HAVING AVG(vehicles.price) > 10000 AND COUNT(*) > 1
	ORDER BY owners.first_name DESC;