﻿CREATE TABLE [dbo].[Personality]
(
	[ID] INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Muutumatu(ID), 
    [Personality] VARCHAR(MAX) NOT NULL
)