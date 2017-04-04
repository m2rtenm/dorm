CREATE TABLE [dbo].[Personal]
(
	[ID] INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Muutumatu(ID), 
    [Relationship] VARCHAR(MAX) NOT NULL, 
    [DriverLicense] VARCHAR(MAX) NOT NULL, 
    [Cooking] VARCHAR(MAX) NOT NULL, 
    [Party] VARCHAR(MAX) NOT NULL, 
    [Music] VARCHAR(MAX) NOT NULL, 
    [Movie] VARCHAR(MAX) NOT NULL, 
    [TV] VARCHAR(MAX) NOT NULL, 
    [Sport] VARCHAR(MAX) NOT NULL,

)
