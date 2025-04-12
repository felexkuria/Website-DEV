create  table if not exists  Addresses ( uniqueID INTEGER PRIMARY KEY AUTOINCREMENT, street varchar,streetNumber int, city varchar,postalCode varchar,country  varchar);
create  table if not exists types(id INTEGER PRIMARY KEY AUTOINCREMENT,name VARCHAR );
INSERT INTO types (name)values('Swahili Dishes');
INSERT INTO Addresses (street, streetNumber, city, postalCode, country)
VALUES
('Main Street', 123, 'Nairobi', '00100', 'Kenya'),
('Kenyatta Avenue', 45, 'Mombasa', '80100', 'Kenya'),
('Moi Avenue', 78, 'Kisumu', '40100', 'Kenya'),
('Uhuru Highway', 12, 'Nakuru', '20100', 'Kenya');
CREATE TABLE if not EXISTS reviews(reviewer_name varchar NOT NULL,rating  int,text varchar,date DATETIME DEFAULT CURRENT_TIMESTAMP,resturant_id INTEGER PRIMARY KEY AUTOINCREMENT);
insert into reviews (reviewer_name,rating,text,resturant_id) values('felex Kuria',1,'Good Food',1);
DROP TABLE IF EXISTS reviews;

CREATE TABLE IF NOT EXISTS reviews (
  review_id INTEGER PRIMARY KEY AUTOINCREMENT,
  reviewer_name VARCHAR NOT NULL,
  rating INT,
  text VARCHAR,
  date DATETIME DEFAULT CURRENT_TIMESTAMP,
  resturant_id INTEGER
);
INSERT INTO reviews (reviewer_name, rating, text, resturant_id) VALUES
('Felex Kuria', 1, 'Good Food', 1),
('Tina Huang', 5, 'Absolutely delicious and friendly staff!', 2),
('David Malan', 4, 'Great portions and clean environment.', 1),
('Alice Kim', 3, 'Service was a bit slow, but the food made up for it.', 3),
('John Doe', 2, 'Expected more from the hype.', 1),
('Sophia Lee', 5, 'Best pasta I’ve had in a while!', 4),
('Mohammed Ali', 4, 'Very tasty and affordable.', 2),
('Lucy Wambui', 5, 'The ambiance and flavors were top-notch.', 3),
('Brian Otieno', 3, 'Decent, but nothing special.', 4),
('Esther Mwangi', 4, 'Loved the desserts!', 2);




CREATE TABLE if not EXISTS resturant (uniqueId INTEGER PRIMARY Key AUTOINCREMENT, Name varchar, AddressesId int ,TypeId int)
SELECT * FROM reviews;

insert INTO resturant (Name,AddressesId,TypeId) VALUES('Cjs',2,3);
SELECT* FROM reviews WHERE rating > 3;
  --  * Merge resturatant data address data type
-- Inserting data
INSERT INTO resturant (Name, AddressesId, TypeId) VALUES
('Mama Oliech', 1, 2),
('Java House', 2, 1),
('Tamarind Nairobi', 3, 3),
('Wasp & Sprout', 4, 2),
('Urban Gourmet Burgers', 5, 1),
('Artcaffe', 6, 1),
('Nyama Mama', 7, 2),
('The Talisman', 8, 3),
('CJ’s', 9, 1),
('KFC Westlands', 10, 4);

SELECT review.reviewer_name, review.rating,review.text,review.date ,
resturant.Name , address.street,type.name as type_name
,type.name
FROM reviews as review 
INNER JOIN resturant as resturant on review.resturant_id = resturant.uniqueId
INNER JOIN types AS type on resturant.TypeId =type.id
INNER JOIN Addresses as address on resturant.AddressesId = address.uniqueID
where rating >3 ;