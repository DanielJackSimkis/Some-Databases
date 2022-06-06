CREATE
  TABLE Brass
  (
    ID               INTEGER NOT NULL ,
    Number_of_valves INTEGER NOT NULL
  ) ;
ALTER TABLE Brass ADD CONSTRAINT Brass_PK PRIMARY KEY ( ID ) ;

INSERT INTO Brass VALUES(1, 5);
INSERT INTO Brass VALUES(2, 3);

CREATE
  TABLE Instruments
  (
    ID            INTEGER NOT NULL ,
    Name          VARCHAR2 (30 CHAR) NOT NULL ,
    Music_Shop_ID INTEGER NOT NULL ,
    String_ID     INTEGER NOT NULL ,
    Brass_ID      INTEGER NOT NULL ,
    Wood_Wind_ID  INTEGER ,
    Percussion_ID INTEGER ,
    Brass_ID1     INTEGER ,
    String_ID1    INTEGER
  ) ;
ALTER TABLE Instruments ADD CONSTRAINT Arc_7 CHECK ( ( (Wood_Wind_ID IS NOT
NULL) AND
(
  Percussion_ID IS NULL
)
AND
(
  String_ID1 IS NULL
)
AND
(
  Brass_ID1 IS NULL
)
) OR
(
  (
    Percussion_ID IS NOT NULL
  )
  AND
  (
    Wood_Wind_ID IS NULL
  )
  AND
  (
    String_ID1 IS NULL
  )
  AND
  (
    Brass_ID1 IS NULL
  )
)
OR
(
  (
    String_ID1 IS NOT NULL
  )
  AND
  (
    Wood_Wind_ID IS NULL
  )
  AND
  (
    Percussion_ID IS NULL
  )
  AND
  (
    Brass_ID1 IS NULL
  )
)
OR
(
  (
    Brass_ID1 IS NOT NULL
  )
  AND
  (
    Wood_Wind_ID IS NULL
  )
  AND
  (
    Percussion_ID IS NULL
  )
  AND
  (
    String_ID1 IS NULL
  )
)
) ;
ALTER TABLE Instruments ADD CONSTRAINT Instruments_PK PRIMARY KEY ( ID ) ;

INSERT INTO Instruments VALUES(1, 'Acoustic Guitar', NULL, NULL, NULL, 1, NULL);

CREATE
  TABLE Music_Shop
  (
    ID       INTEGER NOT NULL ,
    Name     VARCHAR2 (30 CHAR) NOT NULL ,
    Location VARCHAR2 (30 CHAR) NOT NULL
  ) ;
ALTER TABLE Music_Shop ADD CONSTRAINT Music_Shop_PK PRIMARY KEY ( ID ) ;

INSERT INTO Music_Shop VALUES(1, 'Dans music shop', 'Walsall');

CREATE
  TABLE Percussion
  (
    ID         INTEGER NOT NULL ,
    "Pitched?" BOOLEAN NOT NULL
  ) ;
ALTER TABLE Percussion ADD CONSTRAINT Percussion_PK PRIMARY KEY ( ID ) ;

INSERT INTO Percussion VALUES(1, true);
INSERT INTO Percussion VALUES(2, false);

CREATE
  TABLE String_
  (
    ID                INTEGER NOT NULL ,
    Number_of_strings INTEGER NOT NULL
  ) ;
ALTER TABLE String ADD CONSTRAINT String_PK PRIMARY KEY ( ID ) ;

INSERT INTO String_ VALUES(1, 6);
INSERT INTO String_ VALUES(2, 8);

CREATE
  TABLE Wood_Wind
  (
    ID               INTEGER NOT NULL ,
    Number_of_valves INTEGER NOT NULL
  ) ;
ALTER TABLE Wood_Wind ADD CONSTRAINT Wood_Wind_PK PRIMARY KEY ( ID ) ;

INSERT INTO Wood_Wind VALUES(1, 7);
INSERT INTO Wood_Wind VALUES(1, 5);

ALTER TABLE Instruments ADD CONSTRAINT Instruments_Brass_FK FOREIGN KEY (
Brass_ID ) REFERENCES Brass ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_Brass_FKv1 FOREIGN KEY (
Brass_ID1 ) REFERENCES Brass ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_Music_Shop_FK FOREIGN KEY (
Music_Shop_ID ) REFERENCES Music_Shop ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_Percussion_FK FOREIGN KEY (
Percussion_ID ) REFERENCES Percussion ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_String_FK FOREIGN KEY (
String_ID ) REFERENCES String ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_String_FKv1 FOREIGN KEY (
String_ID1 ) REFERENCES String ( ID ) ;

ALTER TABLE Instruments ADD CONSTRAINT Instruments_Wood_Wind_FK FOREIGN KEY (
Wood_Wind_ID ) REFERENCES Wood_Wind ( ID ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
