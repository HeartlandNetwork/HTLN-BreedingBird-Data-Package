# HTLN-BreedingBird-Data-Package
----------------
Contains files and scripts for creating NPS HTLN data package components. The main areas are metadata (EML) and validation scripts for the dataset (Validate). The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Addtional background info on HTLN breeding bird monitoring project is here:

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


-----------------
# Tasks

Continue working with EML_Creation_Script_HTLNBreedingBirds. Get working example going.

Create taxonomy 

Import habitat data.

Develop validation testing for the bird observation data and the habitat data.

Include lookup tables for the site and bird observation and habitat categorical data.


