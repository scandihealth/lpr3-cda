CREATE TABLE LPR3_ACTIVE.KONTAKT_OPHOLDADDRESSER
(
    KONTAKT_ID char(16) for bit data NOT NULL,
    OPHOLDADDRESSER_ID char(16) for bit data NOT NULL,
    CONSTRAINT PK__KONTAKT_OPHOLDADDRESSER PRIMARY KEY (KONTAKT_ID, OPHOLDADDRESSER_ID),
    CONSTRAINT FK__KONTAKT_OPHOLDADDRESSER_KONTAKT_ID FOREIGN KEY (KONTAKT_ID) REFERENCES KONTAKT (ID),
    CONSTRAINT FK__KONTAKT_OPHOLDADDRESSER_OPHOLDADDRESSER_ID FOREIGN KEY (OPHOLDADDRESSER_ID) REFERENCES OPHOLDADRESSE (ID)
);
INSERT INTO LPR3_ACTIVE.KONTAKT_OPHOLDADDRESSER (KONTAKT_ID, OPHOLDADDRESSER_ID) VALUES (BLOB(x'456F06B349E5451D9F3292BFC03F71FE'), BLOB(x'0F5B5BE558E14312A0AA54590BC0E558'));
INSERT INTO LPR3_ACTIVE.KONTAKT_OPHOLDADDRESSER (KONTAKT_ID, OPHOLDADDRESSER_ID) VALUES (BLOB(x'6A623E16344D44459A3CC646756BB398'), BLOB(x'BF03569678BF4B1FA3EC63EB40739439'));
INSERT INTO LPR3_ACTIVE.KONTAKT_OPHOLDADDRESSER (KONTAKT_ID, OPHOLDADDRESSER_ID) VALUES (BLOB(x'7889AE8DA41444FF87155383AB20BBD5'), BLOB(x'57970D370E9247E8AFDD54F612BE78C3'));
INSERT INTO LPR3_ACTIVE.KONTAKT_OPHOLDADDRESSER (KONTAKT_ID, OPHOLDADDRESSER_ID) VALUES (BLOB(x'E23899E623E8408C90C793E2786C4DFF'), BLOB(x'C5A05C3796F74676A9019B8A5096E9B6'));