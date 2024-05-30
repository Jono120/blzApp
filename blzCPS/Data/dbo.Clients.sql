﻿USE [blzCPSContext-af0d3f94-c17c-46c8-88b1-8a7b6999a3e4]
GO

/****** Object: Table [dbo].[Clients] Script Date: 24/05/2024 10:04:41 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[Clients];


GO
CREATE TABLE [dbo].[Clients] (
    [ClientId]			INT IDENTITY (1, 1),
    [StaffMemberName]   NVARCHAR (MAX) NULL,
    [ClientName]        NVARCHAR (MAX) NOT NULL,
    [ClientPhoneNumber] NVARCHAR (MAX) NULL,
    [ClientEmail]       NVARCHAR (MAX) NULL,
    [ClientLocation]    NVARCHAR (MAX) NULL,
    [HasBeenContacted]  BIT            NULL,
    [ClientNotes]       NVARCHAR (MAX) NULL
	 
	PRIMARY KEY (ClientId)
);

INSERT INTO Clients(ClientName, ClientEmail, ClientPhoneNumber, ClientLocation)
VALUES ('Jesika Aiono', 'jesika.aiono@dummyemailgmail.com', '9870 4169 3952', 'Auckland'),
('Tania Akavi', PLACEHOLDER, '98775688792', 'Wellington'),
('Nashi Ali', 'nashi.ali@dummyemailhotmail.co.nz', '9872 653 5014', 'Auckland'),
('Heba Alloush', 'Heba.alloush@dummyemailgmail.com', PLACEHOLDER, 'Auckland'),
('Wayne Anngow', PLACEHOLDER, PLACEHOLDER, 'Canterbury'),
('Donna Atienza', PLACEHOLDER, '9872 0987 3366', 'Wellington'),
('Iris Auyong', 'iris.auyong@dummyemailgmail.com', '9871 214 0075', 'Auckland'),
('Maureen Azam', 'maureenazam@dummyemailgmail.com', '9872 309 2667', 'Auckland'),
('Jacquilyn Beilby', PLACEHOLDER, '9871 893 035', 'Bay of Plenty'),
('Kimberley Black', 'kanglili@dummyemailhotmail.com', '9871 139 9018', 'Manawatu Whanganui'),
('Hannelie Botha', 'hannelieb10@dummyemailgmail.com', '9877 566 0904', 'Northland'),
('Pam Brennan', 'pambrennan11@dummyemailgmail.com', '9871 153 3913', 'Auckland'),
('Alison Brill', 'alisonbrill31@dummyemailgmail.com', '987987756775', 'Auckland'),
('Jennifer Brown', 'beechwoodcourt@dummyemailxtra.co.nz', '9871-2987-5351', 'West Coast'),
('Kirsty Brownlow', 'kirsty.a.brownlow@dummyemailgmail.com', '9872 382 8852', 'Nelson'),
('Nicola Burland', PLACEHOLDER, '9871 081 63631', 'Canterbury'),
('Shelley Casey', PLACEHOLDER, '987749872636', 'Canterbury'),
('Pearl Chukwujama', 'p.chuks7@dummyemailgmail.com', '98726437647', 'Auckland'),
('Dana Clarke', 'danaclarke811@dummyemailgmail.com', '9871 153 7066', 'Auckland'),
('Samantha Clemens', 'samanthaclemens86@dummyemailgmail.com', '987987404423', 'Wellington'),
('Carrie Coghlan', PLACEHOLDER, '9877-570-98745', 'West Coast'),
('Johannes de Klerk', PLACEHOLDER, '987738989875', 'Taranaki'),
('Katherine Drysdale Haywood', 'katiem.dh@dummyemailgmail.com', '98726271568', 'Wellington'),
('Belinda Dudli', 'dudlibc@dummyemailgmail.com', PLACEHOLDER, 'Auckland'),
('Caroline Dunnachie', PLACEHOLDER, PLACEHOLDER, 'Wellington'),
('Suzanne Entwistle', 'sentwistle@dummyemailhotmail.com', '9871 2987 3765', 'Wellington'),
('Elenore Eriksson Smith', 'elenore_maria@dummyemailyahoo.com', '9871 238 4417', 'Wellington'),
('Cassandra Fellows', 'CassandraFellows42@dummyemailgmail.com', '9871 9873 5187', 'Auckland'),
('Rulohn-Carlos Fepuleai', 'fepuleaimeyer@dummyemailgmail.com', '98723870164', 'Otago'),
('Kirsty Fern', 'kirstyfern5162@dummyemailhotmail.com', '9877 581 1377', 'Canterbury'),
('Raewyn Garry', PLACEHOLDER, PLACEHOLDER, 'Wellington'),
('Karen Gittings-Gunn', 'kandjgunn3@dummyemailgmail.com', '98711544997', 'Wellington'),
('Nadezna Glover', 'n.glover56@dummyemailhotmail.com', '98723710566', 'Wellington'),
('Anne-Maree Grimwood', 'grimmies6@dummyemailgmail.com', '9877 277 0106', 'Wellington'),
('Elizabeth Haines', PLACEHOLDER, '9879 985 6808', 'Auckland'),
('Litsa Haliciopoulos', PLACEHOLDER, PLACEHOLDER, 'Hawkes Bay'),
('Keri Anne Halliday', 'kerianneh@dummyemailgmail.com', '9877 936 2603', 'Canterbury'),
('Colleen Harrison', PLACEHOLDER, '9871 747 069', 'Nelson'),
('Peter Hart', 'kepler1559@dummyemailgmail.com', '9879 978 4804', 'Otago'),
('Tracy Hayes', PLACEHOLDER, '9877 979 4762', 'Wellington'),
('Lisa Haywood', PLACEHOLDER, '98772855064', 'Wellington'),
('Kate-Lin Hendry', 'katecanemail@dummyemailgmail.com', '9872 076 4409', 'Otago'),
('Deborah Herrick', 'fendeb@dummyemailxtra.co.nz', '9877 475 1973', 'Southland'),
('Xinyun Hu', 'codiehu@dummyemailoutlook.com', '98710 286 5860', 'Auckland'),
('Gavin Hyde', 'gav.hyde@dummyemailgmail.com', '98721883844', 'Auckland'),
('Anthea Jackson', 'antheamarina@dummyemailgmail.com', '9877 3834332', 'Waikato'),
('Kelly Jonasen', 'kellysheldon40@dummyemailhotmail.com', '9877 678 2464', 'Nelson'),
('Karen Jones', 'karen_jones@dummyemailxtra.co.nz', '9877-223-4077', 'Wellington'),
('Benjamin Jordaan', 'jordaan.b@dummyemailgmail.com', '98710610843', 'Northland'),
('Estelle Joubert', 'estelle.joubert@dummyemailhotmail.com', '9871 676 346', 'Auckland'),
('Andrew Jourdain', PLACEHOLDER, PLACEHOLDER, 'Bay of Plenty'),
('Mark Kelly', 'markakelly71@dummyemailyahoo.com', '9877 3497841', 'Otago'),
('Judith Kunz', 'judith.kunz@dummyemailpublictrust.co.nz', '9877 220 1110', 'Wellington'),
('Chuan Law', 'law.chuansheng@dummyemailgmail.com', '9871 189 2798', 'Wellington'),
('Bronwyn Le Vesconte', PLACEHOLDER, '9872 639 2365', 'Auckland'),
('Jake Lee', PLACEHOLDER, PLACEHOLDER, 'Auckland'),
('Petrina Leifi', 'petrinaleifi@dummyemailyahoo.co.nz', PLACEHOLDER, 'Wellington'),
('Jeremy Lepine', PLACEHOLDER, '9871987337255', 'Wellington'),
('Margaret Lockett', 'marg.phil@dummyemailxtra.co.nz', '9877 659 6482', 'Southland'),
('Charissa Mackenzie', PLACEHOLDER, '98772711192', 'Wellington'),
('Elizabeth Mackie', 'Elizabeth.r.mackie@dummyemailgmail.com', '9871 205 5630', 'Wellington'),
('Angelie Malolot', 'gelmalolot@dummyemailgmail.com', '987987583704', 'Canterbury'),
('Natasha Mann', 'natashahmann1@dummyemailgmail.com', '9872 479 9791', 'Manawatu Whanganui'),
('Rachel Maole', PLACEHOLDER, '98776369033', 'Otago'),
('Jonathan March', 'jrm197@dummyemailgmail.com', PLACEHOLDER, 'Marlborough'),
('Carolyn Marriner', PLACEHOLDER, '9871-411-843', 'Northland'),
('Debra McGuigan', 'debs.mcguigan@dummyemailgmail.com', '9871332323', 'Canterbury'),
('Catherine Moen', 'moen484@dummyemailgmail.com', '9871 236 3686', 'Auckland'),
('Christopher Moore', 'seymoore72@dummyemailgmail.com', '987721189877', 'Canterbury'),
('Nathan Morgan', 'n8hoven@dummyemailgmail.com', '98775187382', 'Wellington'),
('Zachary Mortimer', 'zac.mortimer@dummyemailgmail.com', '9871 492 292', 'Northland'),
('Vilma Mostert', 'vmostert14@dummyemailgmail.com', '98710637304', 'Wellington'),
('Wendy Motu', 'wendymotu@dummyemailgmail.com', '9877 3926359', 'Wellington'),
('Lavenia Mudunaivalu', PLACEHOLDER, '9872 370 5889', 'Auckland'),
('John Murfitt', PLACEHOLDER, PLACEHOLDER, 'Wellington'),
('Nomthandazo Ndebele', PLACEHOLDER, '9877 506 5069', 'Canterbury'),
('David Netherclift', PLACEHOLDER, '9877 801 8049', 'Wellington'),
('Natalia Nicholls', 'natalia_nicholls@dummyemailhotmail.com', '98774639744', 'Manawatu Whanganui'),
('Jo Nickalls', PLACEHOLDER, '98774229360', 'Canterbury'),
('April Nunn', PLACEHOLDER, '98779235740', 'Wellington'),
('Alys O''Malley', 'alys.omalley@dummyemailgmail.com', '987119878185', 'Canterbury'),
('Mark Parker', 'markparker013@dummyemailgmail.com', '98778691421', 'Canterbury'),
('Charmaine Pedersen', 'Charmaine.pedersen@dummyemailgmail.com', '9872 069 9158', 'Canterbury'),
('Erin Pekepo', 'erin_cobby@dummyemailhotmail.com', '98773718237', 'Southland'),
('Nitin Philip', 'nitinq8@dummyemailgmail.com', '98710 837 5432', 'Auckland'),
('Bernadette Power', 'bdominiquepower@dummyemailgmail.com', '9871 674 590', 'Auckland'),
('Jenni Price', PLACEHOLDER, PLACEHOLDER, 'Wellington'),
('Katana Price', PLACEHOLDER, '98775351109', 'Taranaki'),
('Kathryn Price', PLACEHOLDER, '9877 399 6165', 'Taranaki'),
('Kimberley Rayner', PLACEHOLDER, '98776364151', 'Wellington'),
('Anita Rickerby', PLACEHOLDER, PLACEHOLDER, 'Wellington'),
('Maree Ritchfield', 'maree.ritchfield@dummyemailxtra.co.nz', PLACEHOLDER, 'Wellington'),
('Bonny Rowson', 'bonnyrowson@dummyemailgmail.com', '9871987278391', 'Northland'),
('Kimberley Scown', 'Kimberleyscown@dummyemailgmail.com', '9877 555 5589', 'Taranaki'),
('Rachael Seccombe', 'rachael.seccombe@dummyemailgmail.com', '987106098732', 'Auckland'),
('Prakash Sharma', PLACEHOLDER, '9877 4401975', 'Wellington'),
('Jeremy Shaw', 'puremana@dummyemailgmail.com', '9877 834 5961', 'Bay of Plenty'),
('Miranda Simkin', 'mirandasimkin@dummyemailyahoo.com', '9871 247 5246', 'Wellington'),
('Akshara Singh', 'singhshara@dummyemailhotmail.com', '9871 149 2757', 'Auckland'),
('Kylie Stanger', 'kylie_stanger04@dummyemailhotmail.com', '9871 2941042', 'Otago'),
('Hannah Stanley', 'hannahstan@dummyemailgmail.com', PLACEHOLDER, 'Auckland'),
('Peter Stern', 'sternpj31@dummyemailgmail.com', '9877 358 98766', 'Wellington'),
('Trevor Stevenson', PLACEHOLDER, PLACEHOLDER, 'Manawatu Whanganui'),
('Kerry Strange', PLACEHOLDER, '9877 322 0840', 'Nelson'),
('Phil Stuart', 'thestuarts.family@dummyemailgmail.com', '98711091786', 'Canterbury'),
('Charlotte Tatana-Clarkson', 'tatanacharlotte@dummyemailhotmail.com', '987783319879', 'Manawatu Whanganui'),
('Tane Te Hauora', PLACEHOLDER, '98773586293', 'Otago'),
('Jamie Todd', 'jamietodd88@dummyemailgmail.com', '9872 065 1064', 'Manawatu Whanganui'),
('Rochelle Toetoe', 'rmtoetoe@dummyemailgmail.com', '98711530683', 'Auckland'),
('Gary Traves', PLACEHOLDER, PLACEHOLDER, 'Canterbury'),
('Alison Turner', 'nakiexports@dummyemailxtra.co.nz', PLACEHOLDER, 'Wellington'),
('Peter Upson', PLACEHOLDER, '98721345600', 'Wellington'),
('Stewart Vartan', 'karatestew@dummyemailhotmail.co.nz', '9877 284 7691', 'Wellington'),
('Alfonsa Vetter', 'alfonsa.stv@dummyemailgmail.com', '98778041153', 'Wellington'),
('Angela Waters', 'angelawaters@dummyemailhotmail.co.nz', '98772684532', 'Canterbury'),
('Amy Williams', 'amy.williams.nzl@dummyemailgmail.com', '98710 288 6788', 'Northland'),
('Lisa Williams', 'lmwilliams01@dummyemailoutlook.com', '9877 547 1499', 'Manawatu Whanganui'),
('Lynley Williams', PLACEHOLDER, PLACEHOLDER, 'Southland'),
('Meredith Williams', 'meredithjft2006@dummyemailgmail.com', '9877 591 5978', 'Auckland'),
('Nicole Wilson', 'nikki_wilson_au@dummyemailhotmail.com', '9877 310 6194', 'Canterbury'),
('Suzanne Woodill', PLACEHOLDER, '98799040049', 'Wellington'),
('Christine Wright', 'chrissywright196@dummyemailgmail.com', '9871 9873 64378', 'Northland'),
('Audrey Yang', PLACEHOLDER, '98720618688', 'Auckland'),
('Anna Zhou', 'helloanna988@dummyemailgmail.com', '9871 264 8680', 'Auckland');