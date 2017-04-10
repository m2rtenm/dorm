CREATE TABLE [dbo].[Kool] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [University] NVARCHAR (MAX) NOT NULL,
    [Degree]     NVARCHAR (MAX) NOT NULL,
    [Year]       NVARCHAR (MAX) NOT NULL,
    [Field]      NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Kool_Registration] FOREIGN KEY ([ID]) REFERENCES [dbo].[Registration] ([ID])
	ON DELETE CASCADE
);

