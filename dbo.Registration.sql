CREATE TABLE [dbo].[Registration] (
    [ID]       INT            IDENTITY (1, 1) NOT NULL,
    [Email]    NVARCHAR (MAX) NOT NULL,
    [Password] NVARCHAR (MAX) NOT NULL,
    [UserName] NVARCHAR (MAX) NOT NULL,
	
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

