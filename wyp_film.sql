--Tworzymy bazê danych
CREATE DATABASE wyp_film;
GO

USE wyp_film;
GO


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='wypozyczenie')
DROP TABLE wypozyczenie;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='pracownik')
DROP TABLE pracownik;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='klient')
DROP TABLE klient;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='film')
DROP TABLE film;

CREATE TABLE pracownik 
(
  id_pracownik  INT          PRIMARY KEY,
  imie          VARCHAR(15)  NOT NULL,
  nazwisko      VARCHAR(20)  NOT NULL,
  data_zatr     DATETIME     NOT NULL,
   data_zw     DATETIME     NOT NULL,
  dzial         VARCHAR(20)  NOT NULL,
  stanowisko    VARCHAR(20)  NOT NULL,
  pensja        DECIMAL(8,2) NOT NULL,
  dodatek       DECIMAL(8,2),
  telefon       VARCHAR(16),
  mail          VARCHAR(50)
);
GO

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (1, 'Jan', 'Kowalski', '2006-02-01', 'jkowal@coœ.pl', 'sprzedawca', 1500, 123, '666-231-123');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (2,'Aleksandra','Nowak','2006-5-13','ANowak@coœ.pl','ksiêgowa',1500, 123, '666-231-123');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (3,'Bogdan','Boner','2006-3-30','bboner@coœ.pl','ochroniarz',3500,210,'666-231-123');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (4, 'Konrad', 'Korwin', '2006-02-01', 'kkorwin@coœ.pl', 'sprzedawca', 1500, 123, '666-231-123');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (5,'Piotr','Aktoriusz','2017-3-30','paktoriusz@coœ.pl','ochroniarz',3500,210,'666-231-123');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (6,'Jan','Fejsbuczak' , '2006-02-01', 'fejs@coœ.pl', 'sprzedawca', 1500, 123, '');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (7,'Dariusz','Googlarz','2006-5-13','dagoog@coœ.pl','ksiêgowyxxxxx',2500, NULL,'');

INSERT INTO pracownik(id_pracownik,imie,nazwisko,data_zatr,data_zw,mail,stanowisko,pensja,dodatek,telefon)
VALUES (8,'Piotr','Masterarz','2006-3-30','pmasteracz@coœ.pl','ochroniarz',3500,210,'');


CREATE TABLE klient 
(
  id_klient       INT         PRIMARY KEY,
  imie            VARCHAR(15) NOT NULL,
  nazwisko        VARCHAR(20) NOT NULL,
  ulica           VARCHAR(24) NOT NULL,
  numer           VARCHAR(8)  NOT NULL,
  miasto          VARCHAR(24) NOT NULL,
  kod             CHAR(6)     NOT NULL,
  nip             CHAR(11),
  telefon         VARCHAR(16)
  mail          VARCHAR(50)

);
GO

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (2, 'Tomasz', 'Adamczak' , 'HH 12345678','Kwiatowa', '4/9', 'Warszawa', '01-900', '543-123-456', '46-744-431', );

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (3, 'Piotr', 'Malczyk' , 'HF 12445661', 'ADA S.C.', 'Ró¿ana', '9', 'Warszawa', '01-900', '443-133-251', '16-742-114');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (4, 'Pawe³', 'Fiodorowicz' , 'DD 76545321', 'Krawiectwo', 'Armii Krajowej', '22A', 'Warszawa', '01-200', '555-233-256', '44-342-116');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (5, 'Aniela', 'Dalgiewicz' ,NULL , 'Modna Pani', 'Bohaterów GetaA', '24', 'Warszawa', '37-200', '456-134-153', '144-188-415');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (6, 'Joanna', 'Kwiatkowska', NULL, NULL, 'Tuwima', '2/5', 'Warszawa', '58-100', NULL, '963-733-231');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (7, 'Bo¿ena', 'Malinowska', NULL, NULL, 'Lelewela', '34/1', 'Warszawa', '58-100', NULL, '965-553-778');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (8, 'Tomasz', 'Nowak', NULL, NULL, '¯eromskiego', '5A/8', 'Warszawa', '58-100', NULL, '911-135-536');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (9, 'Krzysztof', 'Domaga³a', NULL, NULL, 'Leœna', '5', 'Warszawa', '58-100', NULL, '922-233-232');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (10, 'Arkadiusz', 'Doczekalski', NULL, NULL, 'Leœna', '2', 'Warszawa', '58-100', NULL, '922-233-267');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (11, 'Anna', 'Kowalska' ,'KJ 98765412' , 'Moda S.A.', 'Powstañców Œl¹skich', '4', 'Warszawa', '37-200', '422-132-354', '444-283-901');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (12, 'Krzysztof', 'Dobrowolski' , NULL, 'Kamieniarstwo.pl', 'Strzegomska', '124', 'Warszawa', '37-400', '433-133-332', '443-285-202');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (13, 'Marcin', 'Krzyka³a' , NULL, NULL, 'Konopnickiej', '1/4', 'Warszawa', '37-400', NULL, '442-211-109');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (14, 'Aneta', 'Paprocka' , NULL, NULL, 'Tuwima', '2', 'Warszawa', '37-400', NULL, '442-671-899');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (15, 'Sebastion', 'Kownacki' , NULL, NULL, 'G³owackiego', '2/9', 'Warszawa', '37-400', NULL, '423-681-129');
INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (16, 'Micha³', 'Michalski' , NULL, NULL, 'Kwiatowa', '9/3', 'Warszawa', '37-500', NULL, '499-621-921');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (17, 'Micha³', 'Szykowny' , 'WW 12398765', NULL, 'Leœna', '3', 'Warszawa', '00-100', NULL, '191-221-622');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (18, 'Marcin', 'Marcinkowski' , 'WQ 14368781', NULL, 'Okrê¿na', '33', 'Warszawa', '00-200', NULL, '122-127-647');

INSERT INTO klient(id_klient,imie,nazwisko,ulica,numer,miasto,kod,nip,telefon)
VALUES (19, 'Robert', 'Nowak' , 'WS 12358672', 'Auto naprawa', 'Przemys³owa', '1', 'Warszawa', '00-200', '999-765-120', '822-324-742');


CREATE TABLE wypozyczenie 
(
  id_wypozyczenie INT          PRIMARY KEY,
  id_klient       INT          NOT NULL,
  id_film         INT          NOT NULL,
  kaucja          DECIMAL(8,2),
  czy_wyp  bit NOT NULL default 1,
  data_wyp DATETIME NOT NULL,
  kara int,
);
GO