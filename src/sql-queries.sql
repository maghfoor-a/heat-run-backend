--creating a table that stores your runs 
CREATE TABLE runs (
  id SERIAL PRIMARY KEY,
  run_date DATE NOT NULL,
  distance NUMERIC(5,2) NOT NULL,
  hours INTEGER NOT NULL,
  minutes INTEGER NOT NULL,
  seconds INTEGER NOT NULL
);

--creating dummy data for the table for testing
INSERT INTO runs (run_date, distance, hours, minutes, seconds) VALUES ('2023-01-01', 10.0, 0, 45, 30);
INSERT INTO runs (run_date, distance, hours, minutes, seconds) VALUES ('2023-01-02', 5.0, 0, 22, 15);
INSERT INTO runs (run_date, distance, hours, minutes, seconds) VALUES ('2023-01-03', 3.1, 0, 12, 45);
INSERT INTO runs (run_date, distance, hours, minutes, seconds) VALUES ('2023-01-04', 8.5, 1, 15, 30);
INSERT INTO runs (run_date, distance, hours, minutes, seconds) VALUES ('2023-01-05', 4.0, 0, 30, 0);