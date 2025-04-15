insert into 
reviews (reviewer_name,rating,text,date,resturant_id) 
values(‘felex Kuria’,1,2024-10-12,1);
-- select * From 1st_table_name inner join  2nd_table_name on  (1st_table_name =address.id)

SELECT review.reviewer_name, review.rating, review.text, review.date,
restaurant.name, restaurant.addresses_id, restaurant.type_id,
type.name
FROM reviews AS review
INNER JOIN restaurant AS restaurant 
ON review.restaurant_id = restaurant.unique_id 
INNER JOIN types AS type 
ON restaurant.type_id = type.id
WHERE rating > 3;
