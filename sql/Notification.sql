USE utshelps;

CREATE TABLE notification(
  booking_id INT PRIMARY KEY NOT NULL,
  one_week INT NOT NULL,
  three_days INT NOT NULL,
  one_day INT NOT NULL
);