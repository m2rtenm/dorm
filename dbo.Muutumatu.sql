CREATE TABLE [dbo].[Muutumatu] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]   NVARCHAR (MAX) NOT NULL,
    [LastName]    NVARCHAR (MAX) NOT NULL,
    [DateOfBirth] DATE           NOT NULL,
    [Citizenship] NVARCHAR (MAX) NOT NULL,
    [City]        NVARCHAR (MAX) NOT NULL,
    [Gender]      NVARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Muutumatu_Registration] FOREIGN KEY ([ID]) REFERENCES [dbo].[Registration] ([ID])
	ON DELETE CASCADE
);

