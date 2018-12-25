
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/25/2018 21:42:05
-- Generated from EDMX file: C:\Users\Farham\source\repos\WebApplication2\WebApplication2\Models\adress.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [addressTest];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Owner] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CopenItems'
CREATE TABLE [dbo].[CopenItems] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [percent] nvarchar(max)  NOT NULL,
    [valueBeforDiscount] nvarchar(max)  NOT NULL,
    [valueAfterDiscount] nvarchar(max)  NOT NULL,
    [validDate] nvarchar(max)  NOT NULL,
    [CategoryId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CopenItems'
ALTER TABLE [dbo].[CopenItems]
ADD CONSTRAINT [PK_CopenItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoryId] in table 'CopenItems'
ALTER TABLE [dbo].[CopenItems]
ADD CONSTRAINT [FK_CopenItemCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CopenItemCategory'
CREATE INDEX [IX_FK_CopenItemCategory]
ON [dbo].[CopenItems]
    ([CategoryId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------