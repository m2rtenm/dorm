CREATE TABLE [dbo].[Personality] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [Personality] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Personality_Registration] FOREIGN KEY ([ID]) REFERENCES [dbo].[Registration] ([ID])
	ON DELETE CASCADE
);

