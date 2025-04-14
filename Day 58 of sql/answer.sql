     create  table if not exists  Addresses
     ( uniqueID int PRIMARY KEY AUTO INCREMENT, 
     street varchar,
     streetNumber int,
      city varchar,
      postalCode varchar,
      country  varchar
      );