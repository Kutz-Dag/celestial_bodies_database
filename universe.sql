
universe=> INSERT INTO galaxy (description, age_in_millions_of_years, name, has_life, unique_key_column) VALUES ('The first galaxy to be classified as a spiral galaxy', 400.3, 'Whirlpool Galaxy', false, 3);
INSERT 0 1
universe=> SELECT * FROM galaxy;
+-----------+------------------------------------------------------+--------------------------+------------------+----------+-------------------+
| galaxy_id |                     description                      | age_in_millions_of_years |       name       | has_life | unique_key_column |
+-----------+------------------------------------------------------+--------------------------+------------------+----------+-------------------+
|         1 | A spiral galaxy containing the solar system          |                    13000 | Milky Way        | t        |                 1 |
|         2 | A spiral galaxy nearest to the Milky Way             |                    10010 | Andromeda Galaxy | f        |                 2 |
|         3 | The first galaxy to be classified as a spiral galaxy |                      400 | Whirlpool Galaxy | f        |                 3 |
+-----------+------------------------------------------------------+--------------------------+------------------+----------+-------------------+
(3 rows)

universe=> INSERT INTO galaxy(description, age_in_millions_of_years, name, has_life, unique_key_column) VALUES('A spiral galaxy in an unusual hat-like shape', 13250, 'Sombrero Galaxy', false, 4), ('Another spiral galaxy. It was discovered in 1781 by Pierre Mechain', 13510, 'Pinwheel Galaxy', false, 5), ('This galaxy is known as a starbust galaxy', 13300, 'Cigar Galaxy', false, 6);
INSERT 0 3
universe=> SELECT * FROM galaxy;
+-----------+--------------------------------------------------------------------+--------------------------+------------------+----------+-------------------+
| galaxy_id |                            description                             | age_in_millions_of_years |       name       | has_life | unique_key_column |
+-----------+--------------------------------------------------------------------+--------------------------+------------------+----------+-------------------+
|         1 | A spiral galaxy containing the solar system                        |                    13000 | Milky Way        | t        |                 1 |
|         2 | A spiral galaxy nearest to the Milky Way                           |                    10010 | Andromeda Galaxy | f        |                 2 |
|         3 | The first galaxy to be classified as a spiral galaxy               |                      400 | Whirlpool Galaxy | f        |                 3 |
|         4 | A spiral galaxy in an unusual hat-like shape                       |                    13250 | Sombrero Galaxy  | f        |                 4 |
|         5 | Another spiral galaxy. It was discovered in 1781 by Pierre Mechain |                    13510 | Pinwheel Galaxy  | f        |                 5 |
|         6 | This galaxy is known as a starbust galaxy                          |                    13300 | Cigar Galaxy     | f        |                 6 |
+-----------+--------------------------------------------------------------------+--------------------------+------------------+----------+-------------------+
(6 rows)

universe=> SELECT * FROM star;
+---------+------------------+----------------------------------------------------+--------------------------+----------------------+---------------------+----------+-----------+-------------------+
| star_id |       name       |                    description                     | age_in_millions_of_years |         type         | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+------------------+----------------------------------------------------+--------------------------+----------------------+---------------------+----------+-----------+-------------------+
|       4 | Sun              | The star at the center of our solar system         |                     4600 | G-type main-sequence |                   1 | f        |         1 |         987654321 |
|       5 | Alpha Centauri A | The primary star of the Alpha Centauri star system |                     6000 | G-type main-sequence |                   4 | f        |         1 |         876543210 |
|       6 | Betelgeuse       | A red supergiant in the constellation Orion        |                   800000 | Red supergiant       |                 643 | f        |         1 |         135792468 |
+---------+------------------+----------------------------------------------------+--------------------------+----------------------+---------------------+----------+-----------+-------------------+
(3 rows)

universe=> DELETE FROM star WHERE has_life=f;
ERROR:  column "f" does not exist
LINE 1: DELETE FROM star WHERE has_life=f;
                                        ^
universe=> DELETE FROM star WHERE has_life='f';
DELETE 3
universe=> SELECT * FROM star;
+---------+------+-------------+--------------------------+------+---------------------+----------+-----------+-------------------+
| star_id | name | description | age_in_millions_of_years | type | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+------+-------------+--------------------------+------+---------------------+----------+-----------+-------------------+
+---------+------+-------------+--------------------------+------+---------------------+----------+-----------+-------------------+
(0 rows)

universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Achernar', 'The brightest star in the Eridanus Constellation', 923000, 'White dwarf', 389, false, 1, 11);
INSERT 0 1
universe=> SELECT * FROM star;
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
| star_id |   name   |                   description                    | age_in_millions_of_years |    type     | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
|       7 | Achernar | The brightest star in the Eridanus Constellation |                   923000 | White dwarf |                 389 | f        |         1 |                11 |
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
(1 row)

universe=> UPDATE stars SET star_id=1 WHERE name='Achernar';
ERROR:  relation "stars" does not exist
LINE 1: UPDATE stars SET star_id=1 WHERE name='Achernar';
               ^
universe=>  UPDATE star SET star_id=1 WHERE name='Achernar';
UPDATE 1
universe=> SELECT * FROM star;
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
| star_id |   name   |                   description                    | age_in_millions_of_years |    type     | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar | The brightest star in the Eridanus Constellation |                   923000 | White dwarf |                 389 | f        |         1 |                11 |
+---------+----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
(1 row)

universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Polarisae', 'This star is not visible from the planet Earth', 29800, 'Binary Star', 3000, f, 3, 22);
ERROR:  column "f" does not exist
LINE 1: ...om the planet Earth', 29800, 'Binary Star', 3000, f, 3, 22);
                                                             ^
universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Polarisae', 'This star is not visible from the planet Earth', 29800, 'Binary Star', 3000, false, 3, 22);
INSERT 0 1
universe=> SELECT * FROM stars;
ERROR:  relation "stars" does not exist
LINE 1: SELECT * FROM stars;
                      ^
universe=> SELCT * FROM star;
ERROR:  syntax error at or near "SELCT"
LINE 1: SELCT * FROM star;
        ^
universe=> SELECT * FROM star;
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
| star_id |   name    |                   description                    | age_in_millions_of_years |    type     | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar  | The brightest star in the Eridanus Constellation |                   923000 | White dwarf |                 389 | f        |         1 |                11 |
|       8 | Polarisae | This star is not visible from the planet Earth   |                    29800 | Binary Star |                3000 | f        |         3 |                22 |
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
(2 rows)

universe=> UPDATE star SET star_id=2 WHERE name='Polarisae';
UPDATE 1
universe=> SELECT * FROM star;
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
| star_id |   name    |                   description                    | age_in_millions_of_years |    type     | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar  | The brightest star in the Eridanus Constellation |                   923000 | White dwarf |                 389 | f        |         1 |                11 |
|       2 | Polarisae | This star is not visible from the planet Earth   |                    29800 | Binary Star |                3000 | f        |         3 |                22 |
+---------+-----------+--------------------------------------------------+--------------------------+-------------+---------------------+----------+-----------+-------------------+
(2 rows)

universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Sun', 'The hot star in the center of the solar system', 4603, 'Super Red Giant', 93, false, 1, 33), (Acrux, 'The only star that has a semi-ocean', 23, 'Unknown', 6389, true, 2, 33); 
ERROR:  column "acrux" does not exist
LINE 1: ...em', 4603, 'Super Red Giant', 93, false, 1, 33), (Acrux, 'Th...
                                                             ^
universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Sun', 'The hot star in the center of the solar system', 4603, 'Super Red Giant', 93, false, 1, 33), ('Acrux', 'The only star that has a semi-ocean', 23, 'Unknown', 6389, true, 2, 33); 
ERROR:  duplicate key value violates unique constraint "star_unique_key_column_key"
DETAIL:  Key (unique_key_column)=(33) already exists.
universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Sun', 'The hot star in the center of the solar system', 4603, 'Super Red Giant', 93, false, 1, 33), ('Acrux', 'The only star that has a semi-ocean', 23, 'Unknown', 6389, true, 2, 44); 
INSERT 0 2
universe=> SELECT * FROM star;
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |   name    |                   description                    | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar  | The brightest star in the Eridanus Constellation |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae | This star is not visible from the planet Earth   |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|      11 | Sun       | The hot star in the center of the solar system   |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|      12 | Acrux     | The only star that has a semi-ocean              |                       23 | Unknown         |                6389 | t        |         2 |                44 |
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(4 rows)

universe=> UPDATE star SET star_id=3 WHERE name='Sun';
UPDATE 1
universe=> UPDATE star SET star_id=4 WHERE name='Acrux';
UPDATE 1
universe=> SELECT * FROM star;
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |   name    |                   description                    | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar  | The brightest star in the Eridanus Constellation |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae | This star is not visible from the planet Earth   |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun       | The hot star in the center of the solar system   |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux     | The only star that has a semi-ocean              |                       23 | Unknown         |                6389 | t        |         2 |                44 |
+---------+-----------+--------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(4 rows)

universe=> INSERT INTO star(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, galaxy_id, unique_key_column) VALUES('Orange Mate', 'This star is the most orangest star of the orange-colored stars', 3290, 'Red Giant', 11234, false, 5, 55), ('Nanobirde', 'This star is one of the oldest known stars', 999999, 'Neutron Star', 8712, false, 4, 66);
INSERT 0 2
universe=> SELECT * FROM star;
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |    name     |                           description                           | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar    | The brightest star in the Eridanus Constellation                |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae   | This star is not visible from the planet Earth                  |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun         | The hot star in the center of the solar system                  |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux       | The only star that has a semi-ocean                             |                       23 | Unknown         |                6389 | t        |         2 |                44 |
|      13 | Orange Mate | This star is the most orangest star of the orange-colored stars |                     3290 | Red Giant       |               11234 | f        |         5 |                55 |
|      14 | Nanobirde   | This star is one of the oldest known stars                      |                   999999 | Neutron Star    |                8712 | f        |         4 |                66 |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> UPDATE star SET star_id=5 WHERE name='Orange Mate';
UPDATE 1
universe=> UPDATE star SET star_id=6 WHERE name='Nanobirde';
UPDATE 1
universe=> SELECT * FROM star;
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |    name     |                           description                           | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar    | The brightest star in the Eridanus Constellation                |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae   | This star is not visible from the planet Earth                  |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun         | The hot star in the center of the solar system                  |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux       | The only star that has a semi-ocean                             |                       23 | Unknown         |                6389 | t        |         2 |                44 |
|       5 | Orange Mate | This star is the most orangest star of the orange-colored stars |                     3290 | Red Giant       |               11234 | f        |         5 |                55 |
|       6 | Nanobirde   | This star is one of the oldest known stars                      |                   999999 | Neutron Star    |                8712 | f        |         4 |                66 |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> \d
                        List of relations
+--------+----------------------------+----------+--------------+
| Schema |            Name            |   Type   |    Owner     |
+--------+----------------------------+----------+--------------+
| public | dwarf_planet               | table    | freecodecamp |
| public | dwarf_planet_planet_id_seq | sequence | freecodecamp |
| public | galaxy                     | table    | freecodecamp |
| public | galaxy_galaxy_id_seq       | sequence | freecodecamp |
| public | moon                       | table    | freecodecamp |
| public | moon_moon_id_seq           | sequence | freecodecamp |
| public | planet                     | table    | freecodecamp |
| public | planet_planet_id_seq       | sequence | freecodecamp |
| public | star                       | table    | freecodecamp |
| public | star_star_id_seq           | sequence | freecodecamp |
+--------+----------------------------+----------+--------------+
(10 rows)

universe=> \d planet;
                                                 Table "public.planet"
+--------------------------+------------------------+-----------+----------+-------------------------------------------+
|          Column          |          Type          | Collation | Nullable |                  Default                  |
+--------------------------+------------------------+-----------+----------+-------------------------------------------+
| planet_id                | integer                |           | not null | nextval('planet_planet_id_seq'::regclass) |
| name                     | character varying(60)  |           | not null |                                           |
| description              | text                   |           |          |                                           |
| age_in_millions_of_years | integer                |           |          |                                           |
| type                     | character varying(255) |           |          |                                           |
| distance_from_earth      | integer                |           |          |                                           |
| has_life                 | boolean                |           |          |                                           |
| star_id                  | integer                |           |          |                                           |
| unique_key_column        | numeric                |           | not null |                                           |
+--------------------------+------------------------+-----------+----------+-------------------------------------------+
Indexes:
    "planet_pkey" PRIMARY KEY, btree (planet_id)
    "planet_unique_key_column_key" UNIQUE CONSTRAINT, btree (unique_key_column)
Foreign-key constraints:
    "planet_star_id_fkey" FOREIGN KEY (star_id) REFERENCES star(star_id)
Referenced by:
    TABLE "moon" CONSTRAINT "moon_planet_id_fkey" FOREIGN KEY (planet_id) REFERENCES planet(planet_id)

universe=> SELECT * FROM planet;
+-----------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
| planet_id | name | description | age_in_millions_of_years | type | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
+-----------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
(0 rows)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Earth', 'Our home', 4543, 'Terrestrial World', 0, true, 3, 111);
INSERT 0 1
universe=> SELECT * FROM planet;
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id | name  | description | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth | Our home    |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(1 row)

universe=> SELECT * FROM planet;
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id | name  | description | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth | Our home    |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
+-----------+-------+-------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(1 row)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Mercury', 'Closest planet to the Sun and the first planet of the Solar System', 4500, 'Terrestrial World', 250, false, 3, 222), ('Venus', 'Also known as the planet of love, for some reason', 3873, 'Terrestrial World', 290, false, 3, 333), ('Mars', 'Elon Musk wants to live on this planet', 4890, 'Terrestrial World', 387, true, 3, 444);
INSERT 0 3
universe=> SELECT * FROM planet;
+-----------+---------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |  name   |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+---------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth   | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus   | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars    | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
+-----------+---------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(4 rows)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Hitmuki', 'A planet that is completely covered in water where time relativity is different to Earth', 45, 'Aquatic', 12756, false, 5, 555), ('Leevun I', 'This planet has limited land with majority of the air being a type of thick condensed gas', 476, 'Gas Giant', 6201, true, 4, 666);
INSERT 0 2
universe=> SELECT * FROM star;
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |    name     |                           description                           | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar    | The brightest star in the Eridanus Constellation                |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae   | This star is not visible from the planet Earth                  |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun         | The hot star in the center of the solar system                  |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux       | The only star that has a semi-ocean                             |                       23 | Unknown         |                6389 | t        |         2 |                44 |
|       5 | Orange Mate | This star is the most orangest star of the orange-colored stars |                     3290 | Red Giant       |               11234 | f        |         5 |                55 |
|       6 | Nanobirde   | This star is one of the oldest known stars                      |                   999999 | Neutron Star    |                8712 | f        |         4 |                66 |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> SELECT * FROM planet;
+-----------+----------+-------------------------------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |   name   |                                        description                                        | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+----------+-------------------------------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth    | Our home                                                                                  |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury  | Closest planet to the Sun and the first planet of the Solar System                        |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus    | Also known as the planet of love, for some reason                                         |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars     | Elon Musk wants to live on this planet                                                    |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki  | A planet that is completely covered in water where time relativity is different to Earth  |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I | This planet has limited land with majority of the air being a type of thick condensed gas |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
+-----------+----------+-------------------------------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(6 rows)

universe=> UPDATE planet SET description='A planet that is completely covered in water' WHERE name='Hitmuki';
UPDATE 1
universe=> UPDATE planet SET description='A gas planet with thick condesed gas' WHERE name='Leevun I';
UPDATE 1
universe=> SELECT * FROM planet;
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |   name   |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth    | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury  | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus    | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars     | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki  | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(6 rows)

universe=> SELECT * FROM star;
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |    name     |                           description                           | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar    | The brightest star in the Eridanus Constellation                |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae   | This star is not visible from the planet Earth                  |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun         | The hot star in the center of the solar system                  |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux       | The only star that has a semi-ocean                             |                       23 | Unknown         |                6389 | t        |         2 |                44 |
|       5 | Orange Mate | This star is the most orangest star of the orange-colored stars |                     3290 | Red Giant       |               11234 | f        |         5 |                55 |
|       6 | Nanobirde   | This star is one of the oldest known stars                      |                   999999 | Neutron Star    |                8712 | f        |         4 |                66 |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> SELECT * FROM planet;
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |   name   |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth    | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury  | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus    | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars     | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki  | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
+-----------+----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(6 rows)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Mounbear', 'Completely covered in rocky mountains', 780, 'Terrestrial World', 6253, true, 4, 777), ('Acute', 'A gas giant with lots of moons', 5237, 'Gas Giant', 8600, false, 6, 888), ('Pinned Ha', 'One of the coldest known planets', 3900, 'Ice Giant', 3200, false, 2, 999);
INSERT 0 3
universe=> SELECT * FROM star;
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
| star_id |    name     |                           description                           | age_in_millions_of_years |      type       | distance_from_earth | has_life | galaxy_id | unique_key_column |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
|       1 | Achernar    | The brightest star in the Eridanus Constellation                |                   923000 | White dwarf     |                 389 | f        |         1 |                11 |
|       2 | Polarisae   | This star is not visible from the planet Earth                  |                    29800 | Binary Star     |                3000 | f        |         3 |                22 |
|       3 | Sun         | The hot star in the center of the solar system                  |                     4603 | Super Red Giant |                  93 | f        |         1 |                33 |
|       4 | Acrux       | The only star that has a semi-ocean                             |                       23 | Unknown         |                6389 | t        |         2 |                44 |
|       5 | Orange Mate | This star is the most orangest star of the orange-colored stars |                     3290 | Red Giant       |               11234 | f        |         5 |                55 |
|       6 | Nanobirde   | This star is one of the oldest known stars                      |                   999999 | Neutron Star    |                8712 | f        |         4 |                66 |
+---------+-------------+-----------------------------------------------------------------+--------------------------+-----------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> SELECT * FROM planet;
+-----------+-----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |   name    |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth     | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury   | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus     | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars      | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki   | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I  | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear  | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute     | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
+-----------+-----------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(9 rows)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Hello World', 'A planet where the computer guys hang out', 1, 'Terrestrial World', 8350, true, 6, 211), ('Uranus', 'One of the Ice Giants of the Solar System', 3900, 'Ice Giant', 500, false, 3, 322), ('Saturn', 'A gas giant with beautiful rings made of rocks', 4601, 'Gas Giant', 470, false, 3, 433);
INSERT 0 3
universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(12 rows)

universe=> SELECT * FROM dwarf_planet;
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
| dwarf_planet_id | name | description | age_in_millions_of_years | type | distance_from_earth | has_life | star_id | unique_key_column |
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
(0 rows)

universe=> INSERT INTO planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Pluto', 'The only dwarf planet in the Solar System', 4200, 'Dwarf Planet', 600, false, 1, 544);
INSERT 0 1
universe=> SELECT * FROM dwarf_planet;
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
| dwarf_planet_id | name | description | age_in_millions_of_years | type | distance_from_earth | has_life | star_id | unique_key_column |
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
+-----------------+------+-------------+--------------------------+------+---------------------+----------+---------+-------------------+
(0 rows)

universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
|        13 | Pluto       | The only dwarf planet in the Solar System                          |                     4200 | Dwarf Planet      |                 600 | f        |       1 |               544 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(13 rows)

universe=> DELETE FROM planet WHERE name='Pluto';
DELETE 1
universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(12 rows)

universe=> INSERT INTO dwarf_planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Pluto', 'The only dwarf planet in the Solar System', 4200, 'Rocky Planet', 600, false, 1, 1111);
INSERT 0 1
universe=> SELECT * FROM dwarf_planet;
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
| dwarf_planet_id | name  |                description                | age_in_millions_of_years |     type     | distance_from_earth | has_life | star_id | unique_key_column |
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
|               1 | Pluto | The only dwarf planet in the Solar System |                     4200 | Rocky Planet |                 600 | f        |       1 |              1111 |
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
(1 row)

universe=> INSERT INTO dwarf_planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Hectron', 'This planet has valcanoes everywhere', 378, 'Magma Planet', 5900, false, 4, 2222), ('Lodeurn', 'Nothing much, looks like the moon of Earth', 2765, 'Rocky Planet' 5870, false, 4, 3333);
ERROR:  syntax error at or near "5870"
LINE 1: ...oks like the moon of Earth', 2765, 'Rocky Planet' 5870, fals...
                                                             ^
universe=> SELECT * FROM dwarf_planet;
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
| dwarf_planet_id | name  |                description                | age_in_millions_of_years |     type     | distance_from_earth | has_life | star_id | unique_key_column |
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
|               1 | Pluto | The only dwarf planet in the Solar System |                     4200 | Rocky Planet |                 600 | f        |       1 |              1111 |
+-----------------+-------+-------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
(1 row)

universe=> INSERT INTO dwarf_planet(name, description, age_in_millions_of_years, type, distance_from_earth, has_life, star_id, unique_key_column) VALUES('Hectron', 'This planet has valcanoes everywhere', 378, 'Magma Planet', 5900, false, 4, 2222), ('Lodeurn', 'Nothing much, looks like the moon of Earth', 2765, 'Rocky Planet', 5870, false, 4, 3333);
INSERT 0 2
universe=> SELECT * FROM dwarf_planet;
+-----------------+---------+--------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
| dwarf_planet_id |  name   |                description                 | age_in_millions_of_years |     type     | distance_from_earth | has_life | star_id | unique_key_column |
+-----------------+---------+--------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
|               1 | Pluto   | The only dwarf planet in the Solar System  |                     4200 | Rocky Planet |                 600 | f        |       1 |              1111 |
|               2 | Hectron | This planet has valcanoes everywhere       |                      378 | Magma Planet |                5900 | f        |       4 |              2222 |
|               3 | Lodeurn | Nothing much, looks like the moon of Earth |                     2765 | Rocky Planet |                5870 | f        |       4 |              3333 |
+-----------------+---------+--------------------------------------------+--------------------------+--------------+---------------------+----------+---------+-------------------+
(3 rows)

universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(12 rows)

universe=> SELECT * FROM moon;
+---------+------+-------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id | name | description | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+------+-------------+--------------------------+---------------------+----------+-----------+-------------------+
+---------+------+-------------+--------------------------+---------------------+----------+-----------+-------------------+
(0 rows)

universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('The Moon', 'This is the only moon for Planet Earth', 2200, 45, false, 1, 11111), ('Nebulora', 'A moon that only has self pollinating flowers on it', 310, 6245, true, 7, 22222);
INSERT 0 2
universe=> SELECT * FROM moon;
+---------+----------+-----------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |   name   |                     description                     | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+----------+-----------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon | This is the only moon for Planet Earth              |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora | A moon that only has self pollinating flowers on it |                      310 |                6245 | t        |         7 |             22222 |
+---------+----------+-----------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(2 rows)

universe=>  INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Quasarion', 'A gas moon with a dense atmosphere', 305, 6230, false, 7, 33333), ('Lunastride', 'A habitable moon where life forms are scarce', 301, 8580, true, 8, 44444), ('Celestiscope', 'Part of the large moon system of Acute', 12, 8530, false, 8, 55555), ('Starshard', 'Low gravity so galaxy members float in their spaceship', 10, 8403, true, 8, 66666);
INSERT 0 4
universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       3 | Quasarion    | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(6 rows)

universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Galaxara', 'A large moon nearly the same size as Leevun', 1200, 5925, false, 6, 77777), ('Lunatrix', 'A rocky moon that reflects light strongly', 1190, 5, 12002, false, 5, 88888), ('Orbitelle', 'An icy moon, bzzzz', 49, 3180, false, 9, 99999);
ERROR:  VALUES lists must all be the same length
LINE 1: ...e size as Leevun', 1200, 5925, false, 6, 77777), ('Lunatrix'...
                                                             ^
universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Galaxara', 'A large moon nearly the same size as Leevun', 1200, 5925, false, 6, 77777), ('Lunatrix', 'A rocky moon that reflects light strongly', 1190, 12002, false, 5, 88888), ('Orbitelle', 'An icy moon, bzzzz', 49, 3180, false, 9, 99999);
INSERT 0 3
universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       3 | Quasarion    | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(9 rows)

universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Python', 'Prints the words on the moon', 2, 8380, false, 10, 11112), ('Java', 'The mobile moon, haha', 2, 8368, false, 10, 11113), ('Astraluna', 'A cold moon with a few water bodies', 391, 3205, false, 8, 11114);
INSERT 0 3
universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(12 rows)

universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       3 | Quasarion    | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
|      10 | Python       | Prints the words on the moon                           |                        2 |                8380 | f        |        10 |             11112 |
|      11 | Java         | The mobile moon, haha                                  |                        2 |                8368 | f        |        10 |             11113 |
|      12 | Astraluna    | A cold moon with a few water bodies                    |                      391 |                3205 | f        |         8 |             11114 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(12 rows)

universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Nobsflarem', 'The closest moon to Hitmuki', 12, 12748, false, 5, 11115), ('Neovalan', 'Weak atmosphere with limited water sources', 44, 12701, true, 5, 11116), ('Quasarion', 'A natural rocky planet that previously had life', 1229, 8437, false, 8, 11117);
INSERT 0 3
universe=> SELECT * FROM planet;
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
| planet_id |    name     |                            description                             | age_in_millions_of_years |       type        | distance_from_earth | has_life | star_id | unique_key_column |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
|         1 | Earth       | Our home                                                           |                     4543 | Terrestrial World |                   0 | t        |       3 |               111 |
|         2 | Mercury     | Closest planet to the Sun and the first planet of the Solar System |                     4500 | Terrestrial World |                 250 | f        |       3 |               222 |
|         3 | Venus       | Also known as the planet of love, for some reason                  |                     3873 | Terrestrial World |                 290 | f        |       3 |               333 |
|         4 | Mars        | Elon Musk wants to live on this planet                             |                     4890 | Terrestrial World |                 387 | t        |       3 |               444 |
|         5 | Hitmuki     | A planet that is completely covered in water                       |                       45 | Aquatic           |               12756 | f        |       5 |               555 |
|         6 | Leevun I    | A gas planet with thick condesed gas                               |                      476 | Gas Giant         |                6201 | t        |       4 |               666 |
|         7 | Mounbear    | Completely covered in rocky mountains                              |                      780 | Terrestrial World |                6253 | t        |       4 |               777 |
|         8 | Acute       | A gas giant with lots of moons                                     |                     5237 | Gas Giant         |                8600 | f        |       6 |               888 |
|         9 | Pinned Ha   | One of the coldest known planets                                   |                     3900 | Ice Giant         |                3200 | f        |       2 |               999 |
|        10 | Hello World | A planet where the computer guys hang out                          |                        1 | Terrestrial World |                8350 | t        |       6 |               211 |
|        11 | Uranus      | One of the Ice Giants of the Solar System                          |                     3900 | Ice Giant         |                 500 | f        |       3 |               322 |
|        12 | Saturn      | A gas giant with beautiful rings made of rocks                     |                     4601 | Gas Giant         |                 470 | f        |       3 |               433 |
+-----------+-------------+--------------------------------------------------------------------+--------------------------+-------------------+---------------------+----------+---------+-------------------+
(12 rows)

universe=>  SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       3 | Quasarion    | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
|      10 | Python       | Prints the words on the moon                           |                        2 |                8380 | f        |        10 |             11112 |
|      11 | Java         | The mobile moon, haha                                  |                        2 |                8368 | f        |        10 |             11113 |
|      12 | Astraluna    | A cold moon with a few water bodies                    |                      391 |                3205 | f        |         8 |             11114 |
|      13 | Nobsflarem   | The closest moon to Hitmuki                            |                       12 |               12748 | f        |         5 |             11115 |
|      14 | Neovalan     | Weak atmosphere with limited water sources             |                       44 |               12701 | t        |         5 |             11116 |
|      15 | Quasarion    | A natural rocky planet that previously had life        |                     1229 |                8437 | f        |         8 |             11117 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(15 rows)

universe=> INSERT INTO moon(name, description, age_in_millions_of_years, distance_from_earth, has_life, planet_id, unique_key_column) VALUES('Astraldream', 'A very strange gas moon', 3479, 3298, false, 9, 11118), ('Cosmoglon', 'Home to a group of prehistoric creatures and plants', 5236, 8912, true, 8, 11119), ('Titan', 'A possible habitable moon for the future', 4003, 465, false, 12, 22221), ('Titania', 'A moon with loads of valleys and rough surface', 3650, 489, false, 11, 22223), ('Mangold', 'A rocky moon much smaller than Mounbear', 625, 5543, false, 7, 22224);
INSERT 0 5
universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       3 | Quasarion    | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
|      10 | Python       | Prints the words on the moon                           |                        2 |                8380 | f        |        10 |             11112 |
|      11 | Java         | The mobile moon, haha                                  |                        2 |                8368 | f        |        10 |             11113 |
|      12 | Astraluna    | A cold moon with a few water bodies                    |                      391 |                3205 | f        |         8 |             11114 |
|      13 | Nobsflarem   | The closest moon to Hitmuki                            |                       12 |               12748 | f        |         5 |             11115 |
|      14 | Neovalan     | Weak atmosphere with limited water sources             |                       44 |               12701 | t        |         5 |             11116 |
|      15 | Quasarion    | A natural rocky planet that previously had life        |                     1229 |                8437 | f        |         8 |             11117 |
|      16 | Astraldream  | A very strange gas moon                                |                     3479 |                3298 | f        |         9 |             11118 |
|      17 | Cosmoglon    | Home to a group of prehistoric creatures and plants    |                     5236 |                8912 | t        |         8 |             11119 |
|      18 | Titan        | A possible habitable moon for the future               |                     4003 |                 465 | f        |        12 |             22221 |
|      19 | Titania      | A moon with loads of valleys and rough surface         |                     3650 |                 489 | f        |        11 |             22223 |
|      20 | Mangold      | A rocky moon much smaller than Mounbear                |                      625 |                5543 | f        |         7 |             22224 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(20 rows)

universe=> UPDATE moon SET description='A natural rocky moon that previously had life' WHERE name='Quasarion';
UPDATE 2
universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
|      10 | Python       | Prints the words on the moon                           |                        2 |                8380 | f        |        10 |             11112 |
|      11 | Java         | The mobile moon, haha                                  |                        2 |                8368 | f        |        10 |             11113 |
|      12 | Astraluna    | A cold moon with a few water bodies                    |                      391 |                3205 | f        |         8 |             11114 |
|      13 | Nobsflarem   | The closest moon to Hitmuki                            |                       12 |               12748 | f        |         5 |             11115 |
|      14 | Neovalan     | Weak atmosphere with limited water sources             |                       44 |               12701 | t        |         5 |             11116 |
|      16 | Astraldream  | A very strange gas moon                                |                     3479 |                3298 | f        |         9 |             11118 |
|      17 | Cosmoglon    | Home to a group of prehistoric creatures and plants    |                     5236 |                8912 | t        |         8 |             11119 |
|      18 | Titan        | A possible habitable moon for the future               |                     4003 |                 465 | f        |        12 |             22221 |
|      19 | Titania      | A moon with loads of valleys and rough surface         |                     3650 |                 489 | f        |        11 |             22223 |
|      20 | Mangold      | A rocky moon much smaller than Mounbear                |                      625 |                5543 | f        |         7 |             22224 |
|       3 | Quasarion    | A natural rocky moon that previously had life          |                      305 |                6230 | f        |         7 |             33333 |
|      15 | Quasarion    | A natural rocky moon that previously had life          |                     1229 |                8437 | f        |         8 |             11117 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(20 rows)

universe=> UPDATE moon SET description='A gas moon with a dense atmosphere' WHERE moon_id=3;
UPDATE 1
universe=> UPDATE moon SET name='June' WHERE moon_id=3;
UPDATE 1
universe=> SELECT * FROM moon;
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
| moon_id |     name     |                      description                       | age_in_millions_of_years | distance_from_earth | has_life | planet_id | unique_key_column |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
|       1 | The Moon     | This is the only moon for Planet Earth                 |                     2200 |                  45 | f        |         1 |             11111 |
|       2 | Nebulora     | A moon that only has self pollinating flowers on it    |                      310 |                6245 | t        |         7 |             22222 |
|       4 | Lunastride   | A habitable moon where life forms are scarce           |                      301 |                8580 | t        |         8 |             44444 |
|       5 | Celestiscope | Part of the large moon system of Acute                 |                       12 |                8530 | f        |         8 |             55555 |
|       6 | Starshard    | Low gravity so galaxy members float in their spaceship |                       10 |                8403 | t        |         8 |             66666 |
|       7 | Galaxara     | A large moon nearly the same size as Leevun            |                     1200 |                5925 | f        |         6 |             77777 |
|       8 | Lunatrix     | A rocky moon that reflects light strongly              |                     1190 |               12002 | f        |         5 |             88888 |
|       9 | Orbitelle    | An icy moon, bzzzz                                     |                       49 |                3180 | f        |         9 |             99999 |
|      10 | Python       | Prints the words on the moon                           |                        2 |                8380 | f        |        10 |             11112 |
|      11 | Java         | The mobile moon, haha                                  |                        2 |                8368 | f        |        10 |             11113 |
|      12 | Astraluna    | A cold moon with a few water bodies                    |                      391 |                3205 | f        |         8 |             11114 |
|      13 | Nobsflarem   | The closest moon to Hitmuki                            |                       12 |               12748 | f        |         5 |             11115 |
|      14 | Neovalan     | Weak atmosphere with limited water sources             |                       44 |               12701 | t        |         5 |             11116 |
|      16 | Astraldream  | A very strange gas moon                                |                     3479 |                3298 | f        |         9 |             11118 |
|      17 | Cosmoglon    | Home to a group of prehistoric creatures and plants    |                     5236 |                8912 | t        |         8 |             11119 |
|      18 | Titan        | A possible habitable moon for the future               |                     4003 |                 465 | f        |        12 |             22221 |
|      19 | Titania      | A moon with loads of valleys and rough surface         |                     3650 |                 489 | f        |        11 |             22223 |
|      20 | Mangold      | A rocky moon much smaller than Mounbear                |                      625 |                5543 | f        |         7 |             22224 |
|      15 | Quasarion    | A natural rocky moon that previously had life          |                     1229 |                8437 | f        |         8 |             11117 |
|       3 | June         | A gas moon with a dense atmosphere                     |                      305 |                6230 | f        |         7 |             33333 |
+---------+--------------+--------------------------------------------------------+--------------------------+---------------------+----------+-----------+-------------------+
(20 rows)

universe=> 