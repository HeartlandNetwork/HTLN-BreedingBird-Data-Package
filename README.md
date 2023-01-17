# HTLN-BreedingBird-Data-Package
----------------
Contains files and scripts for creating NPS HTLN data package components. The main areas are metadata (EML) and data validation including exploratory data analyses / data summary / certification documents for dataset publishing. The working example is the HTLN breeding bird protocol and database. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Background info on HTLN breeding bird monitoring project is here:

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

Re-ran T-SQL to pull .csv file. Removed CUVA data for now due to formatting issues with PlotID. Come back to this...


20220109

Downloaded this project to laptop and started using Git locally. Will modify this file then try to get new changes to show on GitHub...


-----------------
# Tasks

1. Get final version of PointIDs with lat/long in decimal degrees - DONE!
2. Fill out the .txt files for the metadata information
	abstract.txt
	additional_info.txt
	attributes_tbl_BirdObs_Import_Text.txt
	custom_units.txt
	intellectual_rights.txt
	keywords.txt
	methods.txt
	personnel.txt
	
3. Continue working with the EML creation script

