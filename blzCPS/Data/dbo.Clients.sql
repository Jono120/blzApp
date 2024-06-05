USE [blzCPSContext-af0d3f94-c17c-46c8-88b1-8a7b6999a3e4]
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

INSERT INTO Clients(StaffMemberName, ClientName, ClientEmail, ClientPhoneNumber, ClientLocation, HasBeenContacted, ClientNotes)
VALUES
('Null',	'Jesika Aiono',		'jesika.aiono@dummyemailgmail.com', 		'9870 4169 3952', 		'Auckland',				'False',  'Null'),
('Null',	'Tania Akavi',		'Null', 								'98775688792', 			'Wellington',			'False',  'Null'),
('Null',	'Nashi Ali',		'nashi.ali@dummyemailhotmail.co.nz', 		'9872 653 5014', 		'Auckland',				'False',  'Null'),
('Null',	'Heba Alloush',		'Heba.alloush@dummyemailgmail.com', 		'Null', 			'Auckland',				'False',  'Null'),
('Null',	'Wayne Anngow',		'Null', 								'Null', 			'Canterbury', 			'False', 'Null'),
('Null',	'Donna Atienza',	'Null', 								'9872 0987 3366', 		'Wellington', 			'True',  'Null'),
('Null',	'Iris Auyong', 		'iris.auyong@dummyemailgmail.com', 			'9871 214 0075', 		'Auckland', 			'False', 'Null'),
('Null',	'Maureen Azam', 	'maureenazam@dummyemailgmail.com', 			'9872 309 2667', 		'Auckland', 			'False', 'Null'),
('Null',	'Jacquilyn Beilby', 'Null', 								'9871 893 035', 		'Bay of Plenty', 		'False', 'Null'),
('Null',	'Kimberley Black', 	'kanglili@dummyemailhotmail.com', 			'9871 139 9018', 		'Manawatu Whanganui',	'False',  'Null'),
('Null',	'Hannelie Botha', 	'hannelieb10@dummyemailgmail.com', 			'9877 566 0904', 		'Northland',			'False',  'Null'),
('Null',	'Pam Brennan', 		'pambrennan11@dummyemailgmail.com', 		'9871 153 3913', 		'Auckland', 			'False', 'Null'),
('Null',	'Alison Brill', 	'alisonbrill31@dummyemailgmail.com', 		'987987756775', 		'Auckland',				'True',  'Null'),
('Null',	'Jennifer Brown', 	'beechwoodcourt@dummyemailxtra.co.nz', 		'9871-2987-5351', 		'West Coast',			'False',  'Null'),
('Null',	'Kirsty Brownlow', 	'kirsty.a.brownlow@dummyemailgmail.com', 	'9872 382 8852', 		'Nelson',				'False',  'Null'),
('Null',	'Nicola Burland', 	'Null', 								'9871 081 63631', 		'Canterbury',			'False',  'Null'),
('Null',	'Shelley Casey', 	'Null', 								'987749872636', 		'Canterbury',			'False',  'Null'),
('Null',	'Pearl Chukwujama', 'p.chuks7@dummyemailgmail.com', 			'98726437647', 			'Auckland',				'False',  'Null'),
('Null',	'Dana Clarke', 		'danaclarke811@dummyemailgmail.com', 		'9871 153 7066', 		'Auckland',				'False',  'Null'),
('Null',	'Samantha Clemens', 'samanthaclemens86@dummyemailgmail.com', 	'987987404423', 		'Wellington',			'False',  'Null'),
('Null',	'Carrie Coghlan', 	'Null', 								'9877-570-98745', 		'West Coast',			'False',  'Null'),
('Null',	'Johannes de Klerk','Null', 								'987738989875', 		'Taranaki',				'False',  'Null')