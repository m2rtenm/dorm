CREATE TABLE [dbo].[Personal] (
    [ID]            INT           IDENTITY (1, 1) NOT NULL,
    [Relationship]  VARCHAR (MAX) NOT NULL,
    [DriverLicense] VARCHAR (MAX) NOT NULL,
    [Cooking]       VARCHAR (MAX) NOT NULL,
    [Party]         VARCHAR (MAX) NOT NULL,
    [Music]         VARCHAR (MAX) NOT NULL,
    [Movie]         VARCHAR (MAX) NOT NULL,
    [TV]            VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Personal_Registration] FOREIGN KEY ([ID]) REFERENCES [dbo].[Registration] ([ID])
	ON DELETE CASCADE
);

