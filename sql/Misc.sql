USE utshelps;

CREATE TABLE misc(
  currentdatetime TEXT NOT NULL,
  futuredatetime TEXT NOT NULL
);

INSERT INTO misc(
  currentdatetime,
  futuredatetime
) VALUES(
  '2015-01-01T12:00:00',
  '2020-01-01T12:00:00'
);