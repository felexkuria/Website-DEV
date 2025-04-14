     create  table if not exists  Addresses
     ( uniqueID int PRIMARY KEY AUTO INCREMENT, 
     street varchar,
     streetNumber int,
      city varchar,
      postalCode varchar,
      country  varchar
      );

     /* Inserting Data Into A Table
* [ ✅] S23L410 - Reading Data From A Table (incl. Filtering)
* [✅ ] S23L411 - Updating & Deleting Data
* [ ✅] S23L412 - Designing A More Complex Database
* [✅ ] S23L413 - Adding A New Table*/
 insert into Addresses (street, streetNumber, city, postalCode, country)
 values ('Main St', 123, 'Springfield', '12345', 'USA'),
        ('Second St', 456, 'Shelbyville', '67890', 'USA'),
     ('Third St', 789, 'Capital City', '54321', 'USA');