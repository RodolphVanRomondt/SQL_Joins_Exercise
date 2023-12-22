-- write your queries here

SELECT * FROM owners o LEFT JOIN vehicles v ON o.id = v.owner_id;

SELECT first_name, last_name, COUNT(*) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id HAVING COUNT(*) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;

