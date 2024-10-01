# Creating a fantasy celestial_bodies_database using SQL

### Description

This was a certified freeCodeCamp Project. The aim was to test newly learned SQL skills by creating a database using SQL.

#### Instructions

For this project, you need to log in to PostgreSQL with psql to create your database. Make all the tests above pass to complete the project. Be sure to get creative, and have fun!

Don't forget to connect to your database after you create it 😄

Here's some ideas for other column and table names: description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth.

#### User stories/tests to pass

- [x] 1. You should create a database named universe

- [x] 2. Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon

- [x] 3. Each table should have a primary key

- [x] 4. Each primary key should automatically increment

- [x] 5. Each table should have a name column

- [x] 6. You should use the INT data type for at least two columns that are not a primary or foreign key

- [x] 7. You should use the NUMERIC data type at least once

- [x] 8. You should use the TEXT data type at least once

- [x] 9. You should use the BOOLEAN data type on at least two columns

- [x] 10. Each "star" should have a foreign key that references one of the rows in galaxy

- [x] 11. Each "planet" should have a foreign key that references one of the rows in star

- [x] 12. Each "moon" should have a foreign key that references one of the rows in planet

- [x] 13. Your database should have at least five tables

- [x] 14. Each table should have at least three rows

- [x] 15. The galaxy and star tables should each have at least six rows

- [x] 16. The planet table should have at least 12 rows

- [x] 17. The moon table should have at least 20 rows

- [x] 18. Each table should have at least three columns

- [x] 19. The galaxy, star, planet, and moon tables should each have at least five columns

- [x] 20. At least two columns per table should not accept NULL values

- [x] 21. At least one column from each table should be required to be UNIQUE

- [x] 22. All columns named name should be of type VARCHAR

- [x] 23. Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id

- [x] 24. Each foreign key column should have the same name as the column it is referencing

