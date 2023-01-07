--creating a table that stores your runs 
CREATE TABLE runs (
  id SERIAL PRIMARY KEY,
  run_date DATE NOT NULL,
  distance NUMERIC (5,2) NOT NULL,
  hours INTEGER NOT NULL,
  seconds INTEGER NOT NULL
  );