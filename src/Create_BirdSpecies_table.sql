

USE HTLN_Sandbox;

CREATE TABLE dbo.BirdSpecies 
(
  speciesid       INT		        NOT NULL IDENTITY,
  aoucode         NVARCHAR(4)   NOT NULL,
  tsn             INT		        NOT NULL,
  commonname      NVARCHAR(60)  NOT NULL,
  scientificname  NVARCHAR(100) NOT NULL,
  family          NVARCHAR(60)  NOT NULL,
);

GO
