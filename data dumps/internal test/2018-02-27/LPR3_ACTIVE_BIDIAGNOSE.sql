CREATE TABLE LPR3_ACTIVE.BIDIAGNOSE
(
    ID char(16) for bit data PRIMARY KEY NOT NULL,
    KONTAKT_ID char(16) for bit data NOT NULL,
    CONSTRAINT FK__BIDIAGNOSE_ID FOREIGN KEY (ID) REFERENCES DIAGNOSE (ID),
    CONSTRAINT FK__BIDIAGNOSE_KONTAKT_ID FOREIGN KEY (KONTAKT_ID) REFERENCES KONTAKT (ID)
);