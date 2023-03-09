SELECT reservations.id as id, properties.title as title, properties.cost_per_night as cost_per_night, start_date,
avg(rating) as average_rating 
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON reservations.id = property_reviews.reservation_id
WHERE reservations.guest_id = 2
GROUP BY properties.title, reservations.id, properties.cost_per_night
ORDER BY start_date DESC 
LIMIT 10;
