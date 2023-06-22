/*
We’ve curated a set of interesting data sets for you: Top movies, Top countries by population, 
Solar system objects by size, Marvel characters, Furniture store sales, Earned KA badges, 
Winston's donut logs, Card game results, and NFL draft picks. 

Pick one of those data sets or create a data set like that, and use advanced SELECT queries to 
discover things about the data. What sort of questions might one have about that data, like if 
they were using it for an app or a business idea? Here are some ideas:

What are average, max, and min values in the data?
What about those numbers per category in the data (using HAVING)?
What ways are there to group the data values that don’t exist yet (using CASE)?
What interesting ways are there to filter the data (using AND/OR)? 
*/

/*
Pokemon Statistics
First 15 rows.
Full table: https://gist.github.com/pamelafox/26b9357c6120d3d0d27c2b90c950e8c6
*/

CREATE TABLE pokemon(
  Number     INTEGER,
  Name       TEXT PRIMARY KEY,
  Type_1     TEXT,
  Type_2     TEXT,
  Total      INTEGER,
  HP         INTEGER,
  Attack     INTEGER,
  Defense    INTEGER,
  Sp_Atk     INTEGER,
  Sp_Def     INTEGER,
  Speed      INTEGER,
  Generation INTEGER,
  Legendary  TEXT
);

INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (1,'Bulbasaur','Grass','Poison',318,45,49,49,65,65,45,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (2,'Ivysaur','Grass','Poison',405,60,62,63,80,80,60,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (3,'Venusaur','Grass','Poison',525,80,82,83,100,100,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (3,'VenusaurMega Venusaur','Grass','Poison',625,80,100,123,122,120,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (4,'Charmander','Fire',NULL,309,39,52,43,60,50,65,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (5,'Charmeleon','Fire',NULL,405,58,64,58,80,65,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'Charizard','Fire','Flying',534,78,84,78,109,85,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'CharizardMega Charizard X','Fire','Dragon',634,78,130,111,130,85,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'CharizardMega Charizard Y','Fire','Flying',634,78,104,78,159,115,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (7,'Squirtle','Water',NULL,314,44,48,65,50,64,43,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (8,'Wartortle','Water',NULL,405,59,63,80,65,80,58,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (9,'Blastoise','Water',NULL,530,79,83,100,85,105,78,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (9,'BlastoiseMega Blastoise','Water',NULL,630,79,103,120,135,115,78,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (10,'Caterpie','Bug',NULL,195,45,30,35,20,20,45,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (11,'Metapod','Bug',NULL,205,50,20,55,25,25,30,1,'False');

-- Total count of pokemons
-- Properties of water-type pokemons
-- Pokemon with the highest HP
-- Pokemon with the lowest Sp_Atk stat
-- Average Attack stat of fire-type pokemons
-- Return all objects where surface gravity is greater than the surface gravity of the earth
-- Return count of each object with mean radius larger than earth and smaller than earth
