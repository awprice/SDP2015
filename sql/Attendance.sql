USE utshelps;

CREATE TABLE attendance(
  booking_id INT PRIMARY KEY NOT NULL,
  workshop_id INT NOT NULL,
  student_id INT NOT NULL,
  attendance INT NOT NULL,
  learnt TEXT NOT NULL,
  taught TEXT NOT NULL,
  datecompleted TEXT NOT NULL
);