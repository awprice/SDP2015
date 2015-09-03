DROP TABLE user;

CREATE TABLE user(
    userid INT PRIMARY KEY NOT NULL,
    password TEXT NOT NULL
);

-- Password: password
INSERT INTO user(userid, password) VALUES(11995483, '$2y$10$HWcdIEcLNgsUN7kSFKjsq.SZn1G4AiesnlehHOLSzJChre3o999dm');