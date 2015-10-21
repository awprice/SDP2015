USE utshelps;

DROP TABLE users;

CREATE TABLE users(
  student_id INT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  password TEXT NOT NULL,
  preferred_first_name TEXT,
  email TEXT NOT NULL,
  home_phone TEXT NOT NULL,
  mobile_phone TEXT NOT NULL,
  best_contact_no TEXT NOT NULL,
  dob TEXT NOT NULL,
  gender TEXT NOT NULL,
  faculty TEXT NOT NULL,
  course TEXT NOT NULL,
  year INT NOT NULL,
  status TEXT NOT NULL,
  degree TEXT NOT NULL,
  first_language TEXT,
  country_of_origin TEXT,
  hsc INT NOT NULL,
  hsc_mark INT,
  ielts INT NOT NULL,
  ielts_mark INT,
  toefl INT NOT NULL,
  toefl_mark INT,
  tafe INT NOT NULL,
  tafe_mark INT,
  cult INT NOT NULL,
  cult_mark INT,
  insearch_deep INT NOT NULL,
  insearch_deep_mark INT,
  insearch_diploma INT NOT NULL,
  insearch_diploma_mark INT,
  foundation_course INT NOT NULL,
  foundation_course_mark INT,
  other TEXT,
  firstuse INT NOT NULL,
  lastlogin INT NOT NULL,
  strikes INT NOT NULL
);

-- Password: password
INSERT INTO users(
  student_id,
  name,
  password,
  preferred_first_name,
  email,
  home_phone,
  mobile_phone,
  best_contact_no,
  dob,
  gender,
  faculty,
  course,
  year,
  status,
  degree,
  first_language,
  country_of_origin,
  hsc,
  hsc_mark,
  ielts,
  ielts_mark,
  toefl,
  toefl_mark,
  tafe,
  tafe_mark,
  cult,
  cult_mark,
  insearch_deep,
  insearch_deep_mark,
  insearch_diploma,
  insearch_diploma_mark,
  foundation_course,
  foundation_course_mark,
  other,
  firstuse,
  lastlogin,
  strikes
) VALUES (
  11111111,
  'Test User 1',
  '$2y$10$HWcdIEcLNgsUN7kSFKjsq.SZn1G4AiesnlehHOLSzJChre3o999dm',
  NULL,
  'test.user.1@student.uts.edu.au',
  '0212345678',
  '0412345678',
  0,
  '1995-01-01',
  'm',
  'Engineering and Information Technology',
  'C10152',
  0,
  '',
  '',
  '',
  '',
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  NULL,
  1,
  0,
  0
);

-- Password: password
INSERT INTO users(
  student_id,
  name,
  password,
  preferred_first_name,
  email,
  home_phone,
  mobile_phone,
  best_contact_no,
  dob,
  gender,
  faculty,
  course,
  year,
  status,
  degree,
  first_language,
  country_of_origin,
  hsc,
  hsc_mark,
  ielts,
  ielts_mark,
  toefl,
  toefl_mark,
  tafe,
  tafe_mark,
  cult,
  cult_mark,
  insearch_deep,
  insearch_deep_mark,
  insearch_diploma,
  insearch_diploma_mark,
  foundation_course,
  foundation_course_mark,
  other,
  firstuse,
  lastlogin,
  strikes
) VALUES (
  22222222,
  'Test User 2',
  '$2y$10$HWcdIEcLNgsUN7kSFKjsq.SZn1G4AiesnlehHOLSzJChre3o999dm',
  NULL,
  'test.user.2@student.uts.edu.au',
  '0212345678',
  '0412345678',
  0,
  '1995-01-01',
  'm',
  'Engineering and Information Technology',
  'C10152',
  0,
  '',
  '',
  '',
  '',
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  NULL,
  1,
  0,
  0
);

-- Password: password
INSERT INTO users(
  student_id,
  name,
  password,
  preferred_first_name,
  email,
  home_phone,
  mobile_phone,
  best_contact_no,
  dob,
  gender,
  faculty,
  course,
  year,
  status,
  degree,
  first_language,
  country_of_origin,
  hsc,
  hsc_mark,
  ielts,
  ielts_mark,
  toefl,
  toefl_mark,
  tafe,
  tafe_mark,
  cult,
  cult_mark,
  insearch_deep,
  insearch_deep_mark,
  insearch_diploma,
  insearch_diploma_mark,
  foundation_course,
  foundation_course_mark,
  other,
  firstuse,
  lastlogin,
  strikes
) VALUES (
  33333333,
  'Test User 3',
  '$2y$10$HWcdIEcLNgsUN7kSFKjsq.SZn1G4AiesnlehHOLSzJChre3o999dm',
  NULL,
  'test.user.3@student.uts.edu.au',
  '0212345678',
  '0412345678',
  0,
  '1995-01-01',
  'm',
  'Engineering and Information Technology',
  'C10152',
  0,
  '',
  '',
  '',
  '',
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  0,
  NULL,
  NULL,
  1,
  0,
  0
);