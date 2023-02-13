# HTLN-BreedingBird-Data-Package
----------------
Contains files and scripts for creating NPS HTLN data package components. The main areas are metadata (EML) and validation scripts for the dataset (Validate). The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Additional background info on HTLN breeding bird monitoring project is here:

https://www.nps.gov/im/htln/birds.htm

--------------------------------
# Notes

20221031

Installed packages associated with NPSdataverse from here:

https://github.com/nationalparkservice/NPSdataverse

20221110

Downloaded EML_Creation_Script.R from here:

https://github.com/nationalparkservice/NPS_EML_Script

Created T-SQL script called BirdObservationThru2022.sql
Created .csv file called HTLNBreedingBirds_BirdObs.csv

Copied EML_Creation_Script.R to EML_Creation_Script_HTLNBreedingBirds.R

20221114

Loaded the .csv into R dataframe using fread.

20221216

Ran first part of EML creation script to create blank text files for the abstract, additional information, custom units, intellectual
rights, keywords, methods, and personnel. Then ran function to create "attributes_datafilename.txt" to describe the dataset attributes.

20221222

Re-ran T-SQL to pull .csv file. Removed CUVA data for now due to formatting issues with PlotID. Come back to this at some future point.

20230119

Added the spatial file containing lat/long decimal degrees for all sampling sites. Focus on EML directory. This will be executable scripts and working example for breeding birds. Clone this for other datasets. 

20230120

Created branch for taxonomy. Write T-SQL to create species list including TSN, Family, Genus, Species, CommonName. Need write R script to insert Kingdom, Phylum, Order into each species record.

20230130

Created species list based on observation data. List includes TSN, Family, Genus, Species, AOUCode, CommonName. 
Need copy of ITIS to join Orders to TSNs

20230213

Created branch called 'itis'. Downloaded copy of itis. Need to install SQL Server on new computer.


-----------------
# Tasks

Continue working with EML_Creation_Script_HTLNBreedingBirds

Create taxonomy 
	Download and install ITIS database
	Join on TSNs and export Orders
	Then join to create TSN, AOUCode, Kingdom, Phylum, Class, [Order], 
		Family, Genus, Species, CommonName <-- Order is the missing info
		
Download all site - bird observations and habitat data
Download all look-ups and leave the codes in the main datasets

Import habitat data
	Import individual habitat tables from existing T-SQL scripts
	How to write metadata? What to include?

Develop validation testing for the bird observation data and the habitat data.
	Review JPs project
	Start list of validation requirements




