<<<<<<< HEAD
# HTLN-BreedingBird-Data-Package
----------------
<<<<<<< HEAD
Contains files and scripts for creating NPS HTLN data package components. The main areas are metadata (EML) and validation scripts for the dataset (Validate). The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Additional background info on HTLN breeding bird monitoring project is here:
=======
Contains files and scripts for creating NPS HTLN data package components. The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Addtional background info on HTLN breeding bird monitoring project is here:
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

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

<<<<<<< HEAD
20230213

Created branch called 'itis'. Downloaded copy of itis. Need to install SQL Server on new computer.

20230227

Installed SQL Server, loaded ITIS database. Created HTLN_Sandbox db. Ran join on TSN, ScientificName.
TSNs and scientific names in HTLN_Landbirds agree with Itis.

20230310

Removed Validate component of repo. Validation will be included in a separate repo.

=======
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

-----------------
# Tasks

Continue working with EML_Creation_Script_HTLNBreedingBirds

Create taxonomy 
<<<<<<< HEAD
	x Download and install ITIS database
  x Verify the TSN's in HTLN_Landbirds 
  X  common names, scientific names, family names
 X   pull order names from ITIS table
    
 ===>   see TSNs_Itis_Hierarchy_BreedingBird_Species.csv - begin parsing from top (left) to botom (right)
           then join top levels to TSN long names....
           only need to get to Order
    
    
Download all  conditions - bird observations and habitat data
Download all look-ups and leave the codes in the main datasets
=======
	Download and install ITIS database
	Join on TSNs and export Orders
	Then join to create TSN, AOUCode, Kingdom, Phylum, Class, [Order], 
		Family, Genus, Species, CommonName
		
Download all site - bird observation and habitat to include complete categorical data.
	Need to join all categorical data and download to be included in datasets
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

Import habitat data
	Import individual habitat tables from existing T-SQL scripts
	How to write metadata? What to include?






=======
# HTLN-BreedingBird-Data-Package
----------------
<<<<<<< HEAD
Contains files and scripts for creating NPS HTLN data package components. The main areas are metadata (EML) and validation scripts for the dataset (Validate). The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Additional background info on HTLN breeding bird monitoring project is here:
=======
Contains files and scripts for creating NPS HTLN data package components. The working example is the HTLN breeding bird protocol and database. The 2022 breeding bird protocol revision is located in Documentation. The directory ./src is my file dumping ground. Files stored in other directories are functioning executable scripts. Thanks for reading!

Addtional background info on HTLN breeding bird monitoring project is here:
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

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

<<<<<<< HEAD
20230213

Created branch called 'itis'. Downloaded copy of itis. Need to install SQL Server on new computer.

20230227

Installed SQL Server, loaded ITIS database. Created HTLN_Sandbox db. Ran join on TSN, ScientificName.
TSNs and scientific names in HTLN_Landbirds agree with Itis.

20230310

Removed Validate component of repo. Validation will be included in a separate repo.

=======
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

-----------------
# Tasks

Continue working with EML_Creation_Script_HTLNBreedingBirds

Create taxonomy 
<<<<<<< HEAD
	x Download and install ITIS database
  x Verify the TSN's in HTLN_Landbirds 
  X  common names, scientific names, family names
 X   pull order names from ITIS table
    
 ===>   see TSNs_Itis_Hierarchy_BreedingBird_Species.csv - begin parsing from top (left) to botom (right)
           then join top levels to TSN long names....
           only need to get to Order
    
    
Download all  conditions - bird observations and habitat data
Download all look-ups and leave the codes in the main datasets
=======
	Download and install ITIS database
	Join on TSNs and export Orders
	Then join to create TSN, AOUCode, Kingdom, Phylum, Class, [Order], 
		Family, Genus, Species, CommonName
		
Download all site - bird observation and habitat to include complete categorical data.
	Need to join all categorical data and download to be included in datasets
>>>>>>> 18b5ec6d9f724504a4be5c5eebcac0929b088a90

Import habitat data
	Import individual habitat tables from existing T-SQL scripts
	How to write metadata? What to include?






>>>>>>> 898e0760f4a80ee7aca76c24737a30cefb2bed83
