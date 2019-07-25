DROP TABLE cats;
DROP TABLE toys;
DROP TABLE cattoys;

CREATE TABLE cats(
  id    INT           PRIMARY KEY,
  name  VARCHAR(25),
  color VARCHAR(25),
  breed VARCHAR(25)
);

CREATE TABLE toys(
  id    INT           PRIMARY KEY,
  price INT           NOT NULL,
  color VARCHAR(25),
  name  VARCHAR(25)
);

CREATE TABLE cattoys(
  id     INT PRIMARY KEY,
  cat_id INT REFERENCES cats (id),
  toy_id INT REFERENCES toys (id)
);

INSERT INTO cats VALUES (1, 'Tom', 'grey', 'egyptian cat');
INSERT INTO cats VALUES (2, 'Jeffrey Jr.', 'white', 'persian');
INSERT INTO cats VALUES (3, 'Stanton', 'black', 'asian');
INSERT INTO cats VALUES (4, 'Andrew Huang', 'red flannel', 'siberian');
INSERT INTO cats VALUES (5, 'Carlos', 'brown', 'instructor');

INSERT INTO toys VALUES (1, 200, 'red', 'blastoise figure');
INSERT INTO toys VALUES (2, 300, 'green', 'digimon');
INSERT INTO toys VALUES (3, 1, 'pink', 'playdoh');
INSERT INTO toys VALUES (4, 1000, 'yellow', 'ps4');
INSERT INTO toys VALUES (5, 5000, 'maroon', 'basketball');

INSERT INTO cattoys VALUES (1, 1, 1);
INSERT INTO cattoys VALUES (2, 2, 2);
INSERT INTO cattoys VALUES (3, 3, 3);
INSERT INTO cattoys VALUES (4, 4, 4);
INSERT INTO cattoys VALUES (5, 5, 5);



SELECT * FROM cats;
SELECT * FROM toys;
SELECT * FROM cattoys;