CREATE TABLE LPR3_ACTIVE.OPHOLDADRESSE
(
    ID char(16) for bit data PRIMARY KEY NOT NULL,
    SLUTTIDSPUNKT timestamp,
    STARTTIDSPUNKT timestamp NOT NULL,
    ENHED_SORIDENTIFIER bigint,
    FRAVAER_ID bigint,
    CONSTRAINT FK__OPHOLDADRESSE_ENHED_SORIDENTIFIER FOREIGN KEY (ENHED_SORIDENTIFIER) REFERENCES SORUNIT (SORIDENTIFIER),
    CONSTRAINT FK__OPHOLDADRESSE_FRAVAER_ID FOREIGN KEY (FRAVAER_ID) REFERENCES SKSKODE (ID)
);
INSERT INTO LPR3_ACTIVE.OPHOLDADRESSE (ID, SLUTTIDSPUNKT, STARTTIDSPUNKT, ENHED_SORIDENTIFIER, FRAVAER_ID) VALUES (BLOB(x'C5A05C3796F74676A9019B8A5096E9B6'), null, '2017-01-24 12:00:00.000000', 276231000016004, null);
INSERT INTO LPR3_ACTIVE.OPHOLDADRESSE (ID, SLUTTIDSPUNKT, STARTTIDSPUNKT, ENHED_SORIDENTIFIER, FRAVAER_ID) VALUES (BLOB(x'BF03569678BF4B1FA3EC63EB40739439'), null, '2017-01-24 12:00:00.000000', 265441000016008, null);
INSERT INTO LPR3_ACTIVE.OPHOLDADRESSE (ID, SLUTTIDSPUNKT, STARTTIDSPUNKT, ENHED_SORIDENTIFIER, FRAVAER_ID) VALUES (BLOB(x'0F5B5BE558E14312A0AA54590BC0E558'), null, '2017-01-24 12:00:00.000000', 265441000016008, null);
INSERT INTO LPR3_ACTIVE.OPHOLDADRESSE (ID, SLUTTIDSPUNKT, STARTTIDSPUNKT, ENHED_SORIDENTIFIER, FRAVAER_ID) VALUES (BLOB(x'57970D370E9247E8AFDD54F612BE78C3'), null, '2017-01-24 12:00:00.000000', 265441000016008, null);