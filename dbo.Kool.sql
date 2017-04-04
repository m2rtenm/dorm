CREATE TABLE [dbo].[Kool] (
    [ID]         INT           NOT NULL,
    [University] VARCHAR (255) NOT NULL,
    [Degree]     VARCHAR (255) NOT NULL,
    [Field]      VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ID]) REFERENCES [dbo].[Muutumatu] ([ID])
);

